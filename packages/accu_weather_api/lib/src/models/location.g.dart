// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          version: $checkedConvert('Version', (v) => v as int),
          key: $checkedConvert('Key', (v) => v as String),
          type: $checkedConvert('Type', (v) => v as String),
          rank: $checkedConvert('Rank', (v) => v as int),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String),
          englishName: $checkedConvert('EnglishName', (v) => v as String),
          primaryPostalCode:
              $checkedConvert('PrimaryPostalCode', (v) => v as String),
          region: $checkedConvert(
              'Region', (v) => Region.fromJson(v as Map<String, dynamic>)),
          country: $checkedConvert(
              'Country', (v) => Country.fromJson(v as Map<String, dynamic>)),
          administrativeArea: $checkedConvert('AdministrativeArea',
              (v) => AdministrativeArea.fromJson(v as Map<String, dynamic>)),
          timeZone: $checkedConvert(
              'TimeZone', (v) => TimeZone.fromJson(v as Map<String, dynamic>)),
          geoPosition: $checkedConvert('GeoPosition',
              (v) => GeoPosition.fromJson(v as Map<String, dynamic>)),
          isAlias: $checkedConvert('IsAlias', (v) => v as bool),
          supplementalAdminAreas: $checkedConvert(
              'SupplementalAdminAreas', (v) => v as List<dynamic>),
          dataSets: $checkedConvert('DataSets',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'version': 'Version',
        'key': 'Key',
        'type': 'Type',
        'rank': 'Rank',
        'localizedName': 'LocalizedName',
        'englishName': 'EnglishName',
        'primaryPostalCode': 'PrimaryPostalCode',
        'region': 'Region',
        'country': 'Country',
        'administrativeArea': 'AdministrativeArea',
        'timeZone': 'TimeZone',
        'geoPosition': 'GeoPosition',
        'isAlias': 'IsAlias',
        'supplementalAdminAreas': 'SupplementalAdminAreas',
        'dataSets': 'DataSets'
      },
    );

Region _$RegionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Region',
      json,
      ($checkedConvert) {
        final val = Region(
          id: $checkedConvert('Id', (v) => v as String?),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String),
          englishName: $checkedConvert('EnglishName', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'localizedName': 'LocalizedName',
        'englishName': 'EnglishName'
      },
    );

Country _$CountryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Country',
      json,
      ($checkedConvert) {
        final val = Country(
          id: $checkedConvert('Id', (v) => v as String?),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String),
          englishName: $checkedConvert('EnglishName', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'localizedName': 'LocalizedName',
        'englishName': 'EnglishName'
      },
    );

AdministrativeArea _$AdministrativeAreaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AdministrativeArea',
      json,
      ($checkedConvert) {
        final val = AdministrativeArea(
          id: $checkedConvert('Id', (v) => v as String?),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String),
          englishName: $checkedConvert('EnglishName', (v) => v as String),
          level: $checkedConvert('Level', (v) => v as int?),
          localizedType: $checkedConvert('LocalizedType', (v) => v as String),
          englishType: $checkedConvert('EnglishType', (v) => v as String),
          countryId: $checkedConvert('CountryId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'localizedName': 'LocalizedName',
        'englishName': 'EnglishName',
        'level': 'Level',
        'localizedType': 'LocalizedType',
        'englishType': 'EnglishType',
        'countryId': 'CountryId'
      },
    );

TimeZone _$TimeZoneFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TimeZone',
      json,
      ($checkedConvert) {
        final val = TimeZone(
          code: $checkedConvert('Code', (v) => v as String),
          name: $checkedConvert('Name', (v) => v as String),
          gmtOffset: $checkedConvert('GmtOffset', (v) => (v as num).toDouble()),
          isDaylightSaving:
              $checkedConvert('IsDaylightSaving', (v) => v as bool),
          nextOffsetChange:
              $checkedConvert('NextOffsetChange', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'code': 'Code',
        'name': 'Name',
        'gmtOffset': 'GmtOffset',
        'isDaylightSaving': 'IsDaylightSaving',
        'nextOffsetChange': 'NextOffsetChange'
      },
    );

GeoPosition _$GeoPositionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'GeoPosition',
      json,
      ($checkedConvert) {
        final val = GeoPosition(
          latitude: $checkedConvert('Latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('Longitude', (v) => (v as num).toDouble()),
          elevation: $checkedConvert('Elevation',
              (v) => Elevation.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'latitude': 'Latitude',
        'longitude': 'Longitude',
        'elevation': 'Elevation'
      },
    );

Elevation _$ElevationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Elevation',
      json,
      ($checkedConvert) {
        final val = Elevation(
          metric: $checkedConvert(
              'Metric', (v) => Metric.fromJson(v as Map<String, dynamic>)),
          imperial: $checkedConvert(
              'Imperial', (v) => Imperial.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'metric': 'Metric', 'imperial': 'Imperial'},
    );

Metric _$MetricFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Metric',
      json,
      ($checkedConvert) {
        final val = Metric(
          value: $checkedConvert('Value', (v) => (v as num).toDouble()),
          unit: $checkedConvert('Unit', (v) => v as String),
          unitType: $checkedConvert('UnitType', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'value': 'Value',
        'unit': 'Unit',
        'unitType': 'UnitType'
      },
    );

Imperial _$ImperialFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Imperial',
      json,
      ($checkedConvert) {
        final val = Imperial(
          value: $checkedConvert('Value', (v) => (v as num).toDouble()),
          unit: $checkedConvert('Unit', (v) => v as String),
          unitType: $checkedConvert('UnitType', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'value': 'Value',
        'unit': 'Unit',
        'unitType': 'UnitType'
      },
    );
