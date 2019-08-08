// File created by
// Lung Razvan <long1eu>
// on 2019-08-01

import 'package:flutter_mapbox_gl/flutter_mapbox_gl.dart';

class PositionAnchor extends ExpressionLiteral {
  const PositionAnchor._(this._i, String value) : super(value);

  final int _i;

  static const PositionAnchor center = PositionAnchor._(0, 'center');
  static const PositionAnchor left = PositionAnchor._(1, 'left');
  static const PositionAnchor right = PositionAnchor._(2, 'right');
  static const PositionAnchor top = PositionAnchor._(2, 'top');
  static const PositionAnchor bottom = PositionAnchor._(2, 'bottom');
  static const PositionAnchor topLeft = PositionAnchor._(2, 'top-left');
  static const PositionAnchor topRight = PositionAnchor._(2, 'top-right');
  static const PositionAnchor bottomLeft = PositionAnchor._(2, 'bottom-left');
  static const PositionAnchor bottomRight = PositionAnchor._(2, 'bottom-right');

  static const List<PositionAnchor> values = <PositionAnchor>[
    center,
    left,
    right,
    top,
    bottom,
    topLeft,
    topRight,
    bottomLeft,
    bottomRight,
  ];

  static const List<String> _names = <String>[
    'center',
    'left',
    'right',
    'top',
    'bottom',
    'topLeft',
    'topRight',
    'bottomLeft',
    'bottomRight',
  ];

  @override
  String toString() => 'PositionAnchor.${_names[_i]}';
}
