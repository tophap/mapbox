// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../page.dart';

class ImageSourceTimeLapsePage extends Page {
  ImageSourceTimeLapsePage()
      : super(
          const Icon(Icons.map),
          'Add an image source with time lapse',
          'Use an image source and a runnable to show data changes over time.',
        );

  @override
  Widget build(BuildContext context) => const _ImageSourceTimeLapsePageState();
}

class _ImageSourceTimeLapsePageState extends StatefulWidget {
  const _ImageSourceTimeLapsePageState({Key key}) : super(key: key);

  @override
  _ImageSourceTimeLapsePageStateState createState() => _ImageSourceTimeLapsePageStateState();
}

class _ImageSourceTimeLapsePageStateState extends State<_ImageSourceTimeLapsePageState> {
  Timer timer;
  MapController controller;
  List<Uint8List> images;
  int i;

  @override
  void initState() {
    super.initState();

    Future.wait([
      'res/southeast_radar_0.png',
      'res/southeast_radar_1.png',
      'res/southeast_radar_2.png',
      'res/southeast_radar_3.png',
    ].map((it) => rootBundle.load(it))).then(_onImageLoaded);
  }

  Future<void> _onImageLoaded(List<ByteData> value) async {
    images = <Uint8List>[];
    for (ByteData data in value) {
      images.add(data.buffer.asUint8List());
    }

    startTimer();
  }

  void startTimer() {
    setState(() => i = 0);
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          setState(() => i = i == 3 ? 0 : i + 1);
        }
      },
    );
  }

  void onMapReady(MapController controller) {
    this.controller = controller;
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      onMapReady: onMapReady,
      options: MapOptions(
        styleFromMapbox: MapStyle.mapboxStreets,
        cameraPosition: CameraPosition(
          target: LatLng(
            latitude: 40.879,
            longitude: -76.476,
          ),
          zoom: 5.5,
        ),
      ),
      layers: <Layer>[
        RasterLayer(
          id: 'animated_image_layer',
          sourceId: 'animated_image_source',
        ),
      ],
      sources: <Source>[
        if (images != null)
          ImageSource(
            id: 'animated_image_source',
            coordinates: LatLngQuad(
              topLeft: LatLng(latitude: 46.437, longitude: -80.425),
              topRight: LatLng(latitude: 46.437, longitude: -71.516),
              bottomRight: LatLng(latitude: 37.936, longitude: -71.516),
              bottomLeft: LatLng(latitude: 37.936, longitude: -80.425),
            ),
            image: images[i],
          ),
      ],
    );
  }
}
