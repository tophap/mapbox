// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';
import '../main.dart';

final LatLng center = LatLng(latitude: 32.080664, longitude: 34.9563837);

class ScrollingMapPage extends StatelessWidget {
  const ScrollingMapPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Page page = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text('This map consumes all touch events.'),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: MapboxMap(
                        onMapReady: onMapReady,
                        options: MapOptions(
                          cameraPosition: CameraPosition(
                            target: center,
                            zoom: 11.0,
                          ),
                        ),
                        gestureRecognizers: <
                            Factory<OneSequenceGestureRecognizer>>{
                          Factory<OneSequenceGestureRecognizer>(
                            () => EagerGestureRecognizer(),
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: <Widget>[
                  const Text('This map doesn\'t consume the vertical drags.'),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                        'It still gets other gestures (e.g scale or tap).'),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: MapboxMap(
                        onMapReady: onMapReady,
                        options: MapOptions(
                          cameraPosition: CameraPosition(
                            target: center,
                            zoom: 11.0,
                          ),
                        ),
                        gestureRecognizers: <
                            Factory<OneSequenceGestureRecognizer>>{
                          Factory<OneSequenceGestureRecognizer>(
                            () => ScaleGestureRecognizer(),
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onMapReady(MapController controller) {}
}
