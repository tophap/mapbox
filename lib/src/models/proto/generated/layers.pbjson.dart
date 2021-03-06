///
//  Generated code. Do not modify.
//  source: layers.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Layer$json = const {
  '1': 'Layer',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'background_layer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Background',
      '9': 0,
      '10': 'backgroundLayer'
    },
    const {
      '1': 'circle_layer',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Circle',
      '9': 0,
      '10': 'circleLayer'
    },
    const {
      '1': 'fill_layer',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Fill',
      '9': 0,
      '10': 'fillLayer'
    },
    const {
      '1': 'fill_extrusion_layer',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.FillExtrusion',
      '9': 0,
      '10': 'fillExtrusionLayer'
    },
    const {
      '1': 'heatmap_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Heatmap',
      '9': 0,
      '10': 'heatmapLayer'
    },
    const {
      '1': 'hillshade_layer',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Hillshade',
      '9': 0,
      '10': 'hillshadeLayer'
    },
    const {
      '1': 'line_layer',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Line',
      '9': 0,
      '10': 'lineLayer'
    },
    const {
      '1': 'raster_layer',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Raster',
      '9': 0,
      '10': 'rasterLayer'
    },
    const {
      '1': 'symbol_layer',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer.Symbol',
      '9': 0,
      '10': 'symbolLayer'
    },
  ],
  '3': const [
    Layer_Background$json,
    Layer_Circle$json,
    Layer_FillExtrusion$json,
    Layer_Fill$json,
    Layer_Heatmap$json,
    Layer_Hillshade$json,
    Layer_Line$json,
    Layer_Raster$json,
    Layer_Symbol$json
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

const Layer_Background$json = const {
  '1': 'Background',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'visible',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'color',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'pattern',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pattern'
    },
    const {
      '1': 'opacity',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'color_transition',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'colorTransition'
    },
    const {
      '1': 'pattern_transition',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'patternTransition'
    },
    const {
      '1': 'opacity_transition',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
  ],
};

const Layer_Circle$json = const {
  '1': 'Circle',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'radius',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'radius'
    },
    const {
      '1': 'color',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'blur',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'blur'
    },
    const {
      '1': 'opacity',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'translate',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translate'
    },
    const {
      '1': 'translate_anchor',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translateAnchor'
    },
    const {
      '1': 'pitch_scale',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pitchScale'
    },
    const {
      '1': 'pitch_alignment',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pitchAlignment'
    },
    const {
      '1': 'stroke_width',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'strokeWidth'
    },
    const {
      '1': 'stroke_color',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'strokeColor'
    },
    const {
      '1': 'stroke_opacity',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'strokeOpacity'
    },
    const {
      '1': 'radius_transition',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'radiusTransition'
    },
    const {
      '1': 'color_transition',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'colorTransition'
    },
    const {
      '1': 'blur_transition',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'blurTransition'
    },
    const {
      '1': 'opacity_transition',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
    const {
      '1': 'translate_transition',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'translateTransition'
    },
    const {
      '1': 'stroke_width_transition',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'strokeWidthTransition'
    },
    const {
      '1': 'stroke_color_transition',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'strokeColorTransition'
    },
    const {
      '1': 'stroke_opacity_transition',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'strokeOpacityTransition'
    },
  ],
};

const Layer_FillExtrusion$json = const {
  '1': 'FillExtrusion',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'opacity',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'color',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'translate',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translate'
    },
    const {
      '1': 'translate_anchor',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translateAnchor'
    },
    const {
      '1': 'pattern',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pattern'
    },
    const {
      '1': 'height',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'height'
    },
    const {
      '1': 'base',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'base'
    },
    const {
      '1': 'vertical_gradient',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'verticalGradient'
    },
    const {
      '1': 'opacity_transition',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
    const {
      '1': 'color_transition',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'colorTransition'
    },
    const {
      '1': 'translate_transition',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'translateTransition'
    },
    const {
      '1': 'pattern_transition',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'patternTransition'
    },
    const {
      '1': 'height_transition',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'heightTransition'
    },
    const {
      '1': 'base_transition',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'baseTransition'
    },
  ],
};

const Layer_Fill$json = const {
  '1': 'Fill',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'antialias',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'antialias'
    },
    const {
      '1': 'opacity',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'color',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'outline_color',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'outlineColor'
    },
    const {
      '1': 'translate',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translate'
    },
    const {
      '1': 'translate_anchor',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translateAnchor'
    },
    const {
      '1': 'pattern',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pattern'
    },
    const {
      '1': 'opacity_transition',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
    const {
      '1': 'color_transition',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'colorTransition'
    },
    const {
      '1': 'outline_color_transition',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'outlineColorTransition'
    },
    const {
      '1': 'translate_transition',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'translateTransition'
    },
    const {
      '1': 'pattern_transition',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'patternTransition'
    },
  ],
};

const Layer_Heatmap$json = const {
  '1': 'Heatmap',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'radius',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'radius'
    },
    const {
      '1': 'weight',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'weight'
    },
    const {
      '1': 'intensity',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'intensity'
    },
    const {
      '1': 'color',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'opacity',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'radius_transition',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'radiusTransition'
    },
    const {
      '1': 'intensity_transition',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'intensityTransition'
    },
    const {
      '1': 'opacity_transition',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
  ],
};

const Layer_Hillshade$json = const {
  '1': 'Hillshade',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'illumination_direction',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'illuminationDirection'
    },
    const {
      '1': 'illumination_anchor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'illuminationAnchor'
    },
    const {
      '1': 'exaggeration',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'exaggeration'
    },
    const {
      '1': 'shadow_color',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'shadowColor'
    },
    const {
      '1': 'highlight_color',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'highlightColor'
    },
    const {
      '1': 'accent_color',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'accentColor'
    },
    const {
      '1': 'exaggeration_transition',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'exaggerationTransition'
    },
    const {
      '1': 'shadow_color_transition',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'shadowColorTransition'
    },
    const {
      '1': 'highlight_color_transition',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'highlightColorTransition'
    },
    const {
      '1': 'accent_color_transition',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'accentColorTransition'
    },
  ],
};

const Layer_Line$json = const {
  '1': 'Line',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'cap',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'cap'
    },
    const {
      '1': 'join',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'join'
    },
    const {
      '1': 'miter_limit',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'miterLimit'
    },
    const {
      '1': 'round_limit',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'roundLimit'
    },
    const {
      '1': 'opacity',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'color',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'color'
    },
    const {
      '1': 'translate',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translate'
    },
    const {
      '1': 'translate_anchor',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'translateAnchor'
    },
    const {
      '1': 'width',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'width'
    },
    const {
      '1': 'gap_width',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'gapWidth'
    },
    const {
      '1': 'offset',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'offset'
    },
    const {
      '1': 'blur',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'blur'
    },
    const {
      '1': 'dasharray',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'dasharray'
    },
    const {
      '1': 'pattern',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'pattern'
    },
    const {
      '1': 'gradient',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'gradient'
    },
    const {
      '1': 'opacity_transition',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
    const {
      '1': 'color_transition',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'colorTransition'
    },
    const {
      '1': 'translate_transition',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'translateTransition'
    },
    const {
      '1': 'width_transition',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'widthTransition'
    },
    const {
      '1': 'gap_width_transition',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'gapWidthTransition'
    },
    const {
      '1': 'offset_transition',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'offsetTransition'
    },
    const {
      '1': 'blur_transition',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'blurTransition'
    },
    const {
      '1': 'dasharray_transition',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'dasharrayTransition'
    },
    const {
      '1': 'pattern_transition',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'patternTransition'
    },
  ],
};

const Layer_Raster$json = const {
  '1': 'Raster',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'opacity',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'opacity'
    },
    const {
      '1': 'hue_rotate',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'hueRotate'
    },
    const {
      '1': 'brightness_min',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'brightnessMin'
    },
    const {
      '1': 'brightness_max',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'brightnessMax'
    },
    const {
      '1': 'saturation',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'saturation'
    },
    const {
      '1': 'contrast',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'contrast'
    },
    const {
      '1': 'resampling',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'resampling'
    },
    const {
      '1': 'fade_duration',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'fadeDuration'
    },
    const {
      '1': 'opacity_transition',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'opacityTransition'
    },
    const {
      '1': 'hue_rotate_transition',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'hueRotateTransition'
    },
    const {
      '1': 'brightness_min_transition',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'brightnessMinTransition'
    },
    const {
      '1': 'brightness_max_transition',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'brightnessMaxTransition'
    },
    const {
      '1': 'saturation_transition',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'saturationTransition'
    },
    const {
      '1': 'contrast_transition',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'contrastTransition'
    },
  ],
};

const Layer_Symbol$json = const {
  '1': 'Symbol',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'source_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceId'
    },
    const {
      '1': 'visible',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'visible'
    },
    const {
      '1': 'min_zoom',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'minZoom'
    },
    const {
      '1': 'max_zoom',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FloatValue',
      '10': 'maxZoom'
    },
    const {
      '1': 'source_layer',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'sourceLayer'
    },
    const {
      '1': 'filter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'filter'
    },
    const {
      '1': 'symbol_placement',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'symbolPlacement'
    },
    const {
      '1': 'symbol_spacing',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'symbolSpacing'
    },
    const {
      '1': 'symbol_avoid_edges',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'symbolAvoidEdges'
    },
    const {
      '1': 'symbol_z_order',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'symbolZOrder'
    },
    const {
      '1': 'icon_allow_overlap',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconAllowOverlap'
    },
    const {
      '1': 'icon_ignore_placement',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconIgnorePlacement'
    },
    const {
      '1': 'icon_optional',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconOptional'
    },
    const {
      '1': 'icon_rotation_alignment',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconRotationAlignment'
    },
    const {
      '1': 'icon_size',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconSize'
    },
    const {
      '1': 'icon_text_fit',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconTextFit'
    },
    const {
      '1': 'icon_text_fit_padding',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconTextFitPadding'
    },
    const {
      '1': 'icon_image',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconImage'
    },
    const {
      '1': 'icon_rotate',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconRotate'
    },
    const {
      '1': 'icon_padding',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconPadding'
    },
    const {
      '1': 'icon_keep_upright',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconKeepUpright'
    },
    const {
      '1': 'icon_offset',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconOffset'
    },
    const {
      '1': 'icon_anchor',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconAnchor'
    },
    const {
      '1': 'icon_pitch_alignment',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconPitchAlignment'
    },
    const {
      '1': 'text_pitch_alignment',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textPitchAlignment'
    },
    const {
      '1': 'text_rotation_alignment',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textRotationAlignment'
    },
    const {
      '1': 'text_field',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textField'
    },
    const {
      '1': 'text_font',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textFont'
    },
    const {
      '1': 'text_size',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textSize'
    },
    const {
      '1': 'text_max_width',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textMaxWidth'
    },
    const {
      '1': 'text_line_height',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textLineHeight'
    },
    const {
      '1': 'text_letter_spacing',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textLetterSpacing'
    },
    const {
      '1': 'text_justify',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textJustify'
    },
    const {
      '1': 'text_radial_offset',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textRadialOffset'
    },
    const {
      '1': 'text_variable_anchor',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textVariableAnchor'
    },
    const {
      '1': 'text_anchor',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textAnchor'
    },
    const {
      '1': 'text_max_angle',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textMaxAngle'
    },
    const {
      '1': 'text_rotate',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textRotate'
    },
    const {
      '1': 'text_padding',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textPadding'
    },
    const {
      '1': 'text_keep_upright',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textKeepUpright'
    },
    const {
      '1': 'text_transform',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textTransform'
    },
    const {
      '1': 'text_offset',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textOffset'
    },
    const {
      '1': 'text_allow_overlap',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textAllowOverlap'
    },
    const {
      '1': 'text_ignore_placement',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textIgnorePlacement'
    },
    const {
      '1': 'text_optional',
      '3': 46,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textOptional'
    },
    const {
      '1': 'icon_opacity',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconOpacity'
    },
    const {
      '1': 'icon_color',
      '3': 48,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconColor'
    },
    const {
      '1': 'icon_halo_color',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconHaloColor'
    },
    const {
      '1': 'icon_halo_width',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconHaloWidth'
    },
    const {
      '1': 'icon_halo_blur',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconHaloBlur'
    },
    const {
      '1': 'icon_translate',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconTranslate'
    },
    const {
      '1': 'icon_translate_anchor',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'iconTranslateAnchor'
    },
    const {
      '1': 'text_opacity',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textOpacity'
    },
    const {
      '1': 'text_color',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textColor'
    },
    const {
      '1': 'text_halo_color',
      '3': 56,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textHaloColor'
    },
    const {
      '1': 'text_halo_width',
      '3': 57,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textHaloWidth'
    },
    const {
      '1': 'text_halo_blur',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textHaloBlur'
    },
    const {
      '1': 'text_translate',
      '3': 59,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textTranslate'
    },
    const {
      '1': 'text_translate_anchor',
      '3': 60,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.StringValue',
      '10': 'textTranslateAnchor'
    },
    const {
      '1': 'icon_opacity_transition',
      '3': 61,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconOpacityTransition'
    },
    const {
      '1': 'icon_color_transition',
      '3': 62,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconColorTransition'
    },
    const {
      '1': 'icon_halo_color_transition',
      '3': 63,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconHaloColorTransition'
    },
    const {
      '1': 'icon_halo_width_transition',
      '3': 64,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconHaloWidthTransition'
    },
    const {
      '1': 'icon_halo_blur_transition',
      '3': 65,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconHaloBlurTransition'
    },
    const {
      '1': 'icon_translate_transition',
      '3': 66,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'iconTranslateTransition'
    },
    const {
      '1': 'text_opacity_transition',
      '3': 67,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textOpacityTransition'
    },
    const {
      '1': 'text_color_transition',
      '3': 68,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textColorTransition'
    },
    const {
      '1': 'text_halo_color_transition',
      '3': 69,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textHaloColorTransition'
    },
    const {
      '1': 'text_halo_width_transition',
      '3': 70,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textHaloWidthTransition'
    },
    const {
      '1': 'text_halo_blur_transition',
      '3': 71,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textHaloBlurTransition'
    },
    const {
      '1': 'text_translate_transition',
      '3': 72,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.TransitionOptions',
      '10': 'textTranslateTransition'
    },
  ],
};

const Operations$json = const {
  '1': 'Operations',
  '3': const [Operations_Add$json],
};

const Operations_Add$json = const {
  '1': 'Add',
  '2': const [
    const {
      '1': 'layer',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Layer',
      '10': 'layer'
    },
    const {'1': 'below_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'belowId'},
    const {'1': 'above_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'aboveId'},
    const {'1': 'index', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'index'},
  ],
  '8': const [
    const {'1': 'position'},
  ],
};
