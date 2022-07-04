import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Location({
    required this.version,
    required this.key,
    required this.type,
    required this.rank,
    required this.localizedName,
    required this.englishName,
    required this.primaryPostalCode,
    required this.region,
    required this.country,
    required this.administrativeArea,
    required this.timeZone,
    required this.geoPosition,
    required this.isAlias,
    required this.supplementalAdminAreas,
    required this.dataSets,
  });

  final int version;
  final String key;
  final String type;
  final int rank;
  final String localizedName;
  final String englishName;
  final String primaryPostalCode;
  final Region region;
  final Country country;
  final AdministrativeArea administrativeArea;
  final TimeZone timeZone;
  final GeoPosition geoPosition;
  final bool isAlias;
  final List<dynamic> supplementalAdminAreas;
  final List<String> dataSets;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@JsonSerializable()
class Region {
  Region({
    required this.id,
    required this.localizedName,
    required this.englishName,
  });

  final String? id;
  final String localizedName;
  final String englishName;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@JsonSerializable()
class Country {
  Country({
    required this.id,
    required this.localizedName,
    required this.englishName,
  });

  final String? id;
  final String localizedName;
  final String englishName;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@JsonSerializable()
class AdministrativeArea {
  AdministrativeArea({
    required this.id,
    required this.localizedName,
    required this.englishName,
    required this.level,
    required this.localizedType,
    required this.englishType,
    required this.countryId,
  });

  final String? id;
  final String localizedName;
  final String englishName;
  final int? level;
  final String localizedType;
  final String englishType;
  final String? countryId;

  factory AdministrativeArea.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeAreaFromJson(json);
}

@JsonSerializable()
class TimeZone {
  TimeZone({
    required this.code,
    required this.name,
    required this.gmtOffset,
    required this.isDaylightSaving,
    required this.nextOffsetChange,
  });

  final String code;
  final String name;
  final double gmtOffset;
  final bool isDaylightSaving;
  final String? nextOffsetChange;

  factory TimeZone.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneFromJson(json);
}

@JsonSerializable()
class GeoPosition {
  GeoPosition({
    required this.latitude,
    required this.longitude,
    required this.elevation,
  });

  final double latitude;
  final double longitude;
  final Elevation elevation;

  factory GeoPosition.fromJson(Map<String, dynamic> json) =>
      _$GeoPositionFromJson(json);
}

@JsonSerializable()
class Elevation {
  Elevation({
    required this.metric,
    required this.imperial,
  });

  final Metric metric;
  final Imperial imperial;

  factory Elevation.fromJson(Map<String, dynamic> json) =>
      _$ElevationFromJson(json);
}

@JsonSerializable()
class Metric {
  Metric({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  final double value;
  final String unit;
  final int unitType;

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);
}

@JsonSerializable()
class Imperial {
  Imperial({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  final double value;
  final String unit;
  final int unitType;

  factory Imperial.fromJson(Map<String, dynamic> json) =>
      _$ImperialFromJson(json);
}
