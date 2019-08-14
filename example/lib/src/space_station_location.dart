// File created by
// Lung Razvan <long1eu>
// on 2019-08-06

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import 'package:http/http.dart';

class SpaceStationLocationPage extends StatefulWidget {
  const SpaceStationLocationPage({Key key}) : super(key: key);

  @override
  _SpaceStationLocationPageState createState() =>
      _SpaceStationLocationPageState();
}

class _SpaceStationLocationPageState extends State<SpaceStationLocationPage> {
  Timer timer;
  Uint8List image;
  LatLng issPosition;
  MapController controller;
  bool setInitialPosition = false;

  @override
  void initState() {
    super.initState();
    rootBundle.load('res/iss.png').then((data) =>
        mounted ? setState(() => image = data.buffer.asUint8List()) : null);

    timer = Timer.periodic(const Duration(seconds: 1), _getData);
    _getData(null);
  }

  void _getData(Timer timer) async {
    final Response data =
        await Client().get('http://api.open-notify.org/iss-now');
    final Map<String, String> position =
        Map<String, String>.from(jsonDecode(data.body)['iss_position']);
    final LatLng _issPosition = LatLng(
      latitude: double.parse(position['latitude']),
      longitude: double.parse(position['longitude']),
    );

    if (mounted) {
      setState(() => issPosition = _issPosition);
      if (!setInitialPosition && controller != null) {
        setInitialPosition = true;
        controller.cameraPosition =
            controller.cameraPosition.copyWith(target: _issPosition, zoom: 4.5);
      }
    }
  }

  void onMapReady(MapController controller) {
    this.controller = controller;
    if (!setInitialPosition && issPosition != null) {
      setInitialPosition = true;
      controller.cameraPosition =
          controller.cameraPosition.copyWith(target: issPosition, zoom: 4.5);
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      options: MapOptions(
        styleFromMapbox: MapStyle.satelliteStreets,
        cameraPosition: CameraPosition(
          zoom: 4.5,
        ),
      ),
      images: {
        if (image != null) 'space-station-icon-id': image,
      },
      onMapReady: onMapReady,
      layers: <Layer>[
        SymbolLayer(
          id: 'layer-id',
          sourceId: 'source-id',
          iconImage: 'space-station-icon-id',
          iconIgnorePlacement: true,
          iconAllowOverlap: true,
          iconSize: .7,
        ),
      ],
      sources: <Source>[
        if (issPosition != null)
          GeoJsonSource(
            id: 'source-id',
            geoJson: jsonEncode(
              {
                "type": "FeatureCollection",
                "features": [
                  {
                    "type": "Feature",
                    "properties": {},
                    "geometry": {
                      "type": "Point",
                      "coordinates": [
                        issPosition.longitude,
                        issPosition.latitude,
                      ]
                    }
                  }
                ]
              },
            ),
          ),
      ],
    );
  }
}