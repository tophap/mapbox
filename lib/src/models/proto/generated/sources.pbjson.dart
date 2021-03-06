///
//  Generated code. Do not modify.
//  source: sources.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'geoJson',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.GeoJson',
      '9': 0,
      '10': 'geoJson'
    },
    const {
      '1': 'image',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.Image',
      '9': 0,
      '10': 'image'
    },
    const {
      '1': 'raster_dem',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.RasterDem',
      '9': 0,
      '10': 'rasterDem'
    },
    const {
      '1': 'raster',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.Raster',
      '9': 0,
      '10': 'raster'
    },
    const {
      '1': 'vector',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.Vector',
      '9': 0,
      '10': 'vector'
    },
    const {
      '1': 'unknown',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.Unknown',
      '9': 0,
      '10': 'unknown'
    },
  ],
  '3': const [
    Source_GeoJson$json,
    Source_Image$json,
    Source_RasterDem$json,
    Source_Raster$json,
    Source_Vector$json,
    Source_Unknown$json,
    Source_TileSet$json
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

const Source_GeoJson$json = const {
  '1': 'GeoJson',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {
      '1': 'options',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.GeoJson.Options',
      '10': 'options'
    },
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {'1': 'geo_json', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'geoJson'},
  ],
  '3': const [Source_GeoJson_Options$json],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_GeoJson_Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'min_zoom', '3': 1, '4': 1, '5': 5, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 2, '4': 1, '5': 5, '10': 'maxZoom'},
    const {'1': 'buffer', '3': 3, '4': 1, '5': 5, '10': 'buffer'},
    const {'1': 'line_metrics', '3': 4, '4': 1, '5': 8, '10': 'lineMetrics'},
    const {'1': 'tolerance', '3': 5, '4': 1, '5': 2, '10': 'tolerance'},
    const {'1': 'cluster', '3': 6, '4': 1, '5': 8, '10': 'cluster'},
    const {
      '1': 'cluster_max_zoom',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'clusterMaxZoom'
    },
    const {
      '1': 'cluster_radius',
      '3': 8,
      '4': 1,
      '5': 5,
      '10': 'clusterRadius'
    },
  ],
};

const Source_Image$json = const {
  '1': 'Image',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {
      '1': 'coordinates',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.LatLngQuad',
      '10': 'coordinates'
    },
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {'1': 'image', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'image'},
    const {'1': 'asset', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'asset'},
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_RasterDem$json = const {
  '1': 'RasterDem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'tile_size', '3': 3, '4': 1, '5': 5, '10': 'tileSize'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {
      '1': 'tile_set',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.TileSet',
      '9': 0,
      '10': 'tileSet'
    },
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_Raster$json = const {
  '1': 'Raster',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'tile_size', '3': 3, '4': 1, '5': 5, '10': 'tileSize'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {
      '1': 'tile_set',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.TileSet',
      '9': 0,
      '10': 'tileSet'
    },
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_Vector$json = const {
  '1': 'Vector',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'uri', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'uri'},
    const {
      '1': 'tile_set',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tophap.mapbox_gl.Source.TileSet',
      '9': 0,
      '10': 'tileSet'
    },
  ],
  '8': const [
    const {'1': 'source'},
  ],
};

const Source_Unknown$json = const {
  '1': 'Unknown',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
  ],
};

const Source_TileSet$json = const {
  '1': 'TileSet',
  '2': const [
    const {'1': 'tile_json', '3': 1, '4': 1, '5': 9, '10': 'tileJson'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'attribution', '3': 5, '4': 1, '5': 9, '10': 'attribution'},
    const {'1': 'template', '3': 6, '4': 1, '5': 9, '10': 'template'},
    const {'1': 'legend', '3': 7, '4': 1, '5': 9, '10': 'legend'},
    const {'1': 'scheme', '3': 8, '4': 1, '5': 9, '10': 'scheme'},
    const {'1': 'tiles', '3': 9, '4': 3, '5': 9, '10': 'tiles'},
    const {'1': 'grids', '3': 10, '4': 3, '5': 9, '10': 'grids'},
    const {'1': 'data', '3': 11, '4': 3, '5': 9, '10': 'data'},
    const {'1': 'min_zoom', '3': 12, '4': 1, '5': 2, '10': 'minZoom'},
    const {'1': 'max_zoom', '3': 13, '4': 1, '5': 2, '10': 'maxZoom'},
    const {'1': 'bounds', '3': 14, '4': 3, '5': 2, '10': 'bounds'},
    const {'1': 'center', '3': 15, '4': 3, '5': 2, '10': 'center'},
    const {'1': 'encoding', '3': 16, '4': 1, '5': 9, '10': 'encoding'},
  ],
};
