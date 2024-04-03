// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetServiceResponseModel _$GetServiceResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetServiceResponseModel(
      (json['routes'] as List<dynamic>)
          .map((e) => GetRoutesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetServiceResponseModelToJson(
        GetServiceResponseModel instance) =>
    <String, dynamic>{
      'routes': instance.routes,
    };

GetRoutesData _$GetRoutesDataFromJson(Map<String, dynamic> json) =>
    GetRoutesData(
      GetBoundsData.fromJson(json['bounds'] as Map<String, dynamic>),
      (json['legs'] as List<dynamic>)
          .map((e) => GetLegsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetRoutesDataToJson(GetRoutesData instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'legs': instance.legs,
    };

GetBoundsData _$GetBoundsDataFromJson(Map<String, dynamic> json) =>
    GetBoundsData(
      GetNorthEastData.fromJson(json['northeast'] as Map<String, dynamic>),
      GetSouthWestData.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBoundsDataToJson(GetBoundsData instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

GetNorthEastData _$GetNorthEastDataFromJson(Map<String, dynamic> json) =>
    GetNorthEastData(
      (json['lat'] as num?)?.toDouble() ?? 0.0,
      (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$GetNorthEastDataToJson(GetNorthEastData instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

GetSouthWestData _$GetSouthWestDataFromJson(Map<String, dynamic> json) =>
    GetSouthWestData(
      (json['lat'] as num?)?.toDouble() ?? 0.0,
      (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$GetSouthWestDataToJson(GetSouthWestData instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

GetLegsData _$GetLegsDataFromJson(Map<String, dynamic> json) => GetLegsData(
      GetLegsDistance.fromJson(json['distance'] as Map<String, dynamic>),
      GetLegsDistance.fromJson(json['duration'] as Map<String, dynamic>),
      json['end_address'] as String? ?? '',
      GetNorthEastData.fromJson(json['end_location'] as Map<String, dynamic>),
      json['start_address'] as String? ?? '',
      GetNorthEastData.fromJson(json['start_location'] as Map<String, dynamic>),
      (json['steps'] as List<dynamic>)
          .map((e) => LegStepsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetLegsDataToJson(GetLegsData instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'end_address': instance.end_address,
      'end_location': instance.end_location,
      'start_address': instance.start_address,
      'start_location': instance.start_location,
      'steps': instance.steps,
    };

GetLegsDistance _$GetLegsDistanceFromJson(Map<String, dynamic> json) =>
    GetLegsDistance(
      json['text'] as String? ?? '',
      json['value'] as int? ?? 0,
    );

Map<String, dynamic> _$GetLegsDistanceToJson(GetLegsDistance instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

LegStepsData _$LegStepsDataFromJson(Map<String, dynamic> json) => LegStepsData(
      GetLegsDistance.fromJson(json['distance'] as Map<String, dynamic>),
      GetLegsDistance.fromJson(json['duration'] as Map<String, dynamic>),
      GetNorthEastData.fromJson(json['end_location'] as Map<String, dynamic>),
      GetNorthEastData.fromJson(json['start_location'] as Map<String, dynamic>),
      json['travel_mode'] as String? ?? '',
    );

Map<String, dynamic> _$LegStepsDataToJson(LegStepsData instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'end_location': instance.end_location,
      'start_location': instance.start_location,
      'travel_mode': instance.travel_mode,
    };
