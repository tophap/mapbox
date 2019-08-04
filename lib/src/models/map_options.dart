// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

library map_options;

import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/painting.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_gl/src/models/gravity.dart';
import 'package:mapbox_gl/src/models/proto/index.dart' as pb;

part 'map_options.g.dart';

abstract class MapOptions implements Built<MapOptions, MapOptionsBuilder> {
  factory MapOptions({
    CameraPosition cameraPosition,
    String apiBaseUri,
    String localIdeographFontFamily,
    bool crossSourceCollisions = true,
    double maxZoom = 25.5,
    double minZoom = 0.0,
    bool zoomGestures = true,
    bool scrollGestures = true,
    bool rotateGestures = true,
    bool tiltGestures = true,
    bool doubleTapGestures = true,
    bool quickZoomGestures = true,
    bool compass = true,
    Gravity compassGravity = Gravity.top,
    EdgeInsets compassMargin = const EdgeInsets.all(4.0),
    bool compassFadeFacingNorth = true,
    bool logo = true,
    Gravity logoGravity = Gravity.bottom,
    EdgeInsets logoMargin = const EdgeInsets.all(4.0),
    bool attribution = true,
    Gravity attributionGravity = Gravity.bottom,
    EdgeInsets attributionMargin = const EdgeInsets.only(left: 92, top: 4.0, right: 4.0, bottom: 4.0),
    Color attributionTintColor,
    bool renderTextureMode = false,
    bool renderTextureTranslucentSurface = false,
    bool enableTilePrefetch = false,
    bool enableZMediaOverlay = false,
    double pixelRatio = 0.0,
    Color foregroundLoadColor = const Color(0xFFF0E9E1),
  }) {
    assert(crossSourceCollisions != null);
    assert(maxZoom != null && maxZoom >= 0 && maxZoom <= 25.5);
    assert(minZoom != null && minZoom >= 0 && minZoom <= 25.5);
    assert(zoomGestures != null);
    assert(scrollGestures != null);
    assert(rotateGestures != null);
    assert(tiltGestures != null);
    assert(doubleTapGestures != null);
    assert(quickZoomGestures != null);
    assert(compass != null);
    assert(compassGravity != null);
    assert(compassMargin != null &&
        compassMargin.left != null &&
        compassMargin.top != null &&
        compassMargin.right != null &&
        compassMargin.bottom != null);
    assert(compassFadeFacingNorth != null);
    assert(logo != null);
    assert(logoGravity != null);
    assert(logoMargin != null &&
        logoMargin.left != null &&
        logoMargin.top != null &&
        logoMargin.right != null &&
        logoMargin.bottom != null);
    assert(attribution != null);
    assert(attributionGravity != null);
    assert(attributionMargin != null &&
        attributionMargin.left != null &&
        attributionMargin.top != null &&
        attributionMargin.right != null &&
        attributionMargin.bottom != null);
    assert(renderTextureMode != null);
    assert(renderTextureTranslucentSurface != null);
    assert(enableTilePrefetch != null);
    assert(enableZMediaOverlay != null);
    assert(pixelRatio != null);
    assert(foregroundLoadColor != null && foregroundLoadColor.opacity == 1.0);
    cameraPosition ??= CameraPosition();

    if (attributionTintColor != null) {
      assert(attributionTintColor.opacity == 1.0);
    }

    return _$MapOptions((b) {
      b
        ..apiBaseUri = apiBaseUri
        ..localIdeographFontFamily = localIdeographFontFamily
        ..crossSourceCollisions = crossSourceCollisions
        ..cameraPosition = cameraPosition.toBuilder()
        ..maxZoom = maxZoom
        ..minZoom = minZoom
        ..zoomGestures = zoomGestures
        ..scrollGestures = scrollGestures
        ..rotateGestures = rotateGestures
        ..tiltGestures = tiltGestures
        ..doubleTapGestures = doubleTapGestures
        ..quickZoomGestures = quickZoomGestures
        ..compass = compass
        ..compassGravity = compassGravity
        ..compassMargin = ListBuilder<int>(<int>[
          compassMargin.left.toInt(),
          compassMargin.top.toInt(),
          compassMargin.right.toInt(),
          compassMargin.bottom.toInt(),
        ])
        ..compassFadeFacingNorth = compassFadeFacingNorth
        ..logo = logo
        ..logoGravity = logoGravity
        ..logoMargin = ListBuilder<int>(<int>[
          logoMargin.left.toInt(),
          logoMargin.top.toInt(),
          logoMargin.right.toInt(),
          logoMargin.bottom.toInt(),
        ])
        ..attribution = attribution
        ..attributionGravity = attributionGravity
        ..attributionMargin = ListBuilder<int>(<int>[
          compassMargin.left.toInt(),
          compassMargin.top.toInt(),
          compassMargin.right.toInt(),
          compassMargin.bottom.toInt(),
        ])
        ..attributionTintColor = attributionTintColor?.value
        ..renderTextureMode = renderTextureMode
        ..renderTextureTranslucentSurface = renderTextureTranslucentSurface
        ..enableTilePrefetch = enableTilePrefetch
        ..enableZMediaOverlay = enableZMediaOverlay
        ..pixelRatio = pixelRatio
        ..foregroundLoadColor = foregroundLoadColor.value;
    });
  }

  factory MapOptions.fromProtoData(Uint8List data) {
    return MapOptions.fromProto(pb.Map__Options.fromBuffer(data));
  }

  factory MapOptions.fromProto(pb.Map__Options proto) {
    return _$MapOptions((MapOptionsBuilder b) {
      b
        ..apiBaseUri = proto.apiBaseUri
        ..localIdeographFontFamily = proto.localIdeographFontFamily
        ..crossSourceCollisions = proto.crossSourceCollisions
        ..cameraPosition = CameraPosition.fromProto(proto.cameraPosition).toBuilder()
        ..maxZoom = proto.maxZoom
        ..minZoom = proto.minZoom
        ..zoomGestures = proto.zoomGestures
        ..scrollGestures = proto.scrollGestures
        ..rotateGestures = proto.rotateGestures
        ..tiltGestures = proto.tiltGestures
        ..doubleTapGestures = proto.doubleTapGestures
        ..quickZoomGestures = proto.quickZoomGestures
        ..compass = proto.compass
        ..compassGravity = Gravity.fromProto(proto.compassGravity)
        ..compassMargin = ListBuilder<int>(proto.compassMargin)
        ..compassFadeFacingNorth = proto.compassFadeFacingNorth
        ..logo = proto.logo
        ..logoGravity = Gravity.fromProto(proto.logoGravity)
        ..logoMargin = ListBuilder<int>(proto.logoMargin)
        ..attribution = proto.attribution
        ..attributionGravity = Gravity.fromProto(proto.attributionGravity)
        ..attributionMargin = ListBuilder<int>(proto.attributionMargin)
        ..attributionTintColor = proto.hasAttributionTintColor() ? colorValue_(proto.attributionTintColor) : null
        ..renderTextureMode = proto.renderTextureMode
        ..renderTextureTranslucentSurface = proto.renderTextureTranslucentSurface
        ..enableTilePrefetch = proto.enableTilePrefetch
        ..enableZMediaOverlay = proto.enableZMediaOverlay
        ..pixelRatio = proto.pixelRatio
        ..foregroundLoadColor = colorValue_(proto.foregroundLoadColor);
    });
  }

  MapOptions._();

  @nullable
  String get apiBaseUri;

  @nullable
  String get localIdeographFontFamily;

  bool get crossSourceCollisions;

  CameraPosition get cameraPosition;

  double get maxZoom;

  double get minZoom;

  bool get zoomGestures;

  bool get scrollGestures;

  bool get rotateGestures;

  bool get tiltGestures;

  bool get doubleTapGestures;

  bool get quickZoomGestures;

  bool get compass;

  Gravity get compassGravity;

  BuiltList<int> get compassMargin;

  EdgeInsets get compassMarginValue {
    return EdgeInsets.only(
      left: compassMargin[0].toDouble(),
      top: compassMargin[1].toDouble(),
      right: compassMargin[2].toDouble(),
      bottom: compassMargin[3].toDouble(),
    );
  }

  bool get compassFadeFacingNorth;

  bool get logo;

  Gravity get logoGravity;

  BuiltList<int> get logoMargin;

  EdgeInsets get logoMarginValue {
    return EdgeInsets.only(
      left: logoMargin[0].toDouble(),
      top: logoMargin[1].toDouble(),
      right: logoMargin[2].toDouble(),
      bottom: logoMargin[3].toDouble(),
    );
  }

  bool get attribution;

  Gravity get attributionGravity;

  BuiltList<int> get attributionMargin;

  EdgeInsets get attributionMarginValue {
    return EdgeInsets.only(
      left: attributionMargin[0].toDouble(),
      top: attributionMargin[1].toDouble(),
      right: attributionMargin[2].toDouble(),
      bottom: attributionMargin[3].toDouble(),
    );
  }

  @nullable
  int get attributionTintColor;

  Color get attributionTintColorValue => Color(attributionTintColor);

  bool get renderTextureMode;

  bool get renderTextureTranslucentSurface;

  bool get enableTilePrefetch;

  bool get enableZMediaOverlay;

  double get pixelRatio;

  int get foregroundLoadColor;

  Color get foregroundLoadColorValue => Color(foregroundLoadColor);

  pb.Map__Options get proto {
    final pb.Map__Options message = pb.Map__Options.create()
      ..crossSourceCollisions = crossSourceCollisions
      ..cameraPosition = cameraPosition.proto
      ..maxZoom = maxZoom
      ..minZoom = minZoom
      ..zoomGestures = zoomGestures
      ..scrollGestures = scrollGestures
      ..rotateGestures = rotateGestures
      ..tiltGestures = tiltGestures
      ..doubleTapGestures = doubleTapGestures
      ..quickZoomGestures = quickZoomGestures
      ..compass = compass
      ..compassGravity = compassGravity.proto
      ..compassMargin.addAll(compassMargin)
      ..compassFadeFacingNorth = compassFadeFacingNorth
      ..logo = logo
      ..logoGravity = logoGravity.proto
      ..logoMargin.addAll(logoMargin)
      ..attribution = attribution
      ..attributionGravity = attributionGravity.proto
      ..attributionMargin.addAll(attributionMargin)
      ..renderTextureMode = renderTextureMode
      ..renderTextureTranslucentSurface = renderTextureTranslucentSurface
      ..enableTilePrefetch = enableTilePrefetch
      ..enableZMediaOverlay = enableZMediaOverlay
      ..pixelRatio = pixelRatio
      ..foregroundLoadColor = color_(foregroundLoadColor);

    if (apiBaseUri != null) message.apiBaseUri = apiBaseUri;
    if (localIdeographFontFamily != null) message.localIdeographFontFamily = localIdeographFontFamily;
    if (attributionTintColor != null) message.attributionTintColor = color_(attributionTintColor);
    return message..freeze();
  }

  @memoized
  Uint8List get data => proto.writeToBuffer();

  static Serializer<MapOptions> get serializer => _$mapOptionsSerializer;
}
