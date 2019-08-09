// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

part of flutter_mapbox_gl;

class MapboxMap extends StatefulWidget {
  const MapboxMap({
    Key key,
    this.onMapReady,
    this.gestureRecognizers,
    this.options,
    this.mapEvents,
    this.mapTaps,
    this.layers,
    this.sources,
    this.images,
  }) : super(key: key);

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;
  final MapOptions options;
  final MapEvents mapEvents;
  final MapTaps mapTaps;
  final ValueChanged<MapController> onMapReady;
  final List<Layer> layers;
  final List<Source> sources;
  final Map<String, Uint8List> images;

  @override
  _MapboxMapState createState() => _MapboxMapState();
}

class _MapboxMapState extends State<MapboxMap> {
  MapController _controller;
  StreamController<MethodCall> _methodCall;
  StreamSubscription<MethodCall> _sub;
  MethodChannel channel;

  @override
  void initState() {
    super.initState();
    _methodCall = StreamController.broadcast();
    _sub = _methodCall.stream.listen(_onMapEvent);
  }

  void onPlatformViewCreated(int id) {
    channel = MethodChannel('com.tophap/mapbox_gl_factory_$id');
    channel.setMethodCallHandler((event) async => _methodCall.add(event));
  }

  void _onMapEvent(MethodCall event) {
    if (event.method.startsWith('mapEvent#')) {
      widget.mapEvents?.handleEvent(event);
    } else if (event.method.startsWith('mapTap#')) {
      widget.mapTaps?.handleEvent(event);
    } else if (event.method == 'mapReady') {
      final Uint8List data = event.arguments;
      final pb.Map__Operations_Ready info = pb.Map__Operations_Ready.fromBuffer(data);
      _controller = MapController._(info: info, calls: _methodCall.stream);
      widget.onMapReady?.call(_controller);

      Future.wait<dynamic>(<Future<dynamic>>[
        if (widget.sources != null) ...widget.sources.map(_controller.style.addSource),
        if (widget.layers != null) ...widget.layers.map(_controller.style.addLayer),
        if (widget.images != null)
          ...widget.images.keys.map((String name) => _controller.style.addImage(name, widget.images[name])),
      ]);
    }
  }

  @override
  void didUpdateWidget(MapboxMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_controller == null) return;
    updateAll(oldWidget);
  }

  Future<void> updateAll(MapboxMap oldWidget) async {
    final List<Layer> oldLayers = oldWidget.layers ?? <Layer>[];
    final List<Layer> newLayers = widget.layers ?? <Layer>[];
    final List<Source> newSources = widget.sources ?? <Source>[];
    final List<Source> oldSources = oldWidget.sources ?? <Source>[];
    final Map<String, Uint8List> newImages = widget.images ?? <String, Uint8List>{};
    final Map<String, Uint8List> oldImages = oldWidget.images ?? <String, Uint8List>{};

    final bool sameLayers = const ListEquality<Layer>().equals(oldLayers, newLayers);
    final bool sameSources = const ListEquality<Source>().equals(oldSources, newSources);
    final bool sameImages = const MapEquality<String, Uint8List>().equals(oldImages, newImages);
    if (sameLayers && sameSources && sameImages) return;

    final List<Future<dynamic>> futures = <Future<dynamic>>[];
    if (!sameLayers) {
      final Map<String, Layer> oldIds = oldLayers.asMap().map((_, it) => MapEntry(it.id, it));
      final Map<String, Layer> newIds = newLayers.asMap().map((_, it) => MapEntry(it.id, it));

      final remove = oldIds.keys.where((id) => !newIds.keys.contains(id));
      final update = newIds.keys.where((it) => oldIds.keys.contains(it));
      final add = newIds.keys.where((it) => !oldIds.keys.contains(it)).map((id) => newIds[id]);

      await Future.wait(remove.map(_controller.style.removeLayer));

      for (String id in update) {
        if (newIds[id] == oldIds[id]) continue;
        final Layer layer = _controller.style.getLayer(id);
        if (layer == null) {
          // not yet ready?
          continue;
        }
        futures.add(layer.update(newIds[id]));
      }
      await Future.wait(futures);
      futures.clear();

      await Future.wait(add.map(_controller.style.addLayer));
    }

    if (!sameSources) {
      final Map<String, Source> oldIds = oldSources.asMap().map((_, it) => MapEntry(it.id, it));
      final Map<String, Source> newIds = newSources.asMap().map((_, it) => MapEntry(it.id, it));

      final remove = oldIds.keys.where((id) => !newIds.keys.contains(id));
      final update = newIds.keys.where((it) => oldIds.keys.contains(it));
      final add = newIds.keys.where((it) => !oldIds.keys.contains(it)).map((id) => newIds[id]);

      await Future.wait(remove.map(_controller.style.removeSource));

      for (String id in update) {
        final Source source = newIds[id];
        if (source == oldIds[id]) continue;
        if (source is GeoJsonSource) {
          final GeoJsonSource _source = _controller.style.getSource(id);
          futures.add(_source.copyFrom(source));
        } else if (source is ImageSource) {
          final ImageSource _source = _controller.style.getSource(id);
          futures.add(_source.copyFrom(source));
        }
      }
      await Future.wait(futures);
      futures.clear();

      await Future.wait(add.map(_controller.style.addSource));
    }

    if (!sameImages) {
      final Map<String, Uint8List> oldIds = oldImages.map((name, it) => MapEntry(name, it));
      final Map<String, Uint8List> newIds = newImages.map((name, it) => MapEntry(name, it));

      final remove = oldIds.keys.where((id) => !newIds.keys.contains(id));
      final add = newIds.keys.where((it) => !oldIds.keys.contains(it));

      await Future.wait(remove.map(_controller.style.removeImage));
      await Future.wait(futures);
      futures.clear();

      await Future.wait(add.map((String name) => _controller.style.addImage(name, newImages[name])));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _sub.cancel();
    _methodCall.close();
    channel.invokeMethod('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MapOptions options = widget.options ?? MapOptions();

    if (Platform.isAndroid) {
      return AndroidView(
        viewType: 'com.tophap/mapbox_gl_factory',
        onPlatformViewCreated: onPlatformViewCreated,
        gestureRecognizers: widget.gestureRecognizers,
        creationParams: options.data,
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else if (Platform.isIOS) {
      return UiKitView(
        viewType: 'com.tophap/mapbox_gl_factory',
        onPlatformViewCreated: onPlatformViewCreated,
        gestureRecognizers: widget.gestureRecognizers,
        creationParams: options.data,
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else {
      return Text('Not supported on this platform.');
    }
  }
}

class MapEvents {
  const MapEvents({
    this.onApiMove,
    this.onMove,
    this.onRotate,
    this.onScale,
    this.onShove,
  });

  final VoidCallback onApiMove;
  final VoidCallback onMove;
  final VoidCallback onRotate;
  final VoidCallback onScale;
  final VoidCallback onShove;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'mapEvent#onApiMove':
        return onApiMove?.call();
      case 'mapEvent#onMove':
        return onMove?.call();
      case 'mapEvent#onRotate':
        return onRotate?.call();
      case 'mapEvent#onScale':
        return onScale?.call();
      case 'mapEvent#onShove':
        return onShove?.call();
    }
  }
}

class MapTaps {
  MapTaps({
    this.onTap,
    this.onLongTap,
  });

  final ValueChanged<LatLng> onTap;
  final ValueChanged<LatLng> onLongTap;

  void handleEvent(MethodCall event) {
    switch (event.method) {
      case 'mapTap#onTap':
        return onTap?.call(LatLng.fromProtoData(event.arguments));
      case 'mapTap#onLongTap':
        return onLongTap?.call(LatLng.fromProtoData(event.arguments));
    }
  }
}
