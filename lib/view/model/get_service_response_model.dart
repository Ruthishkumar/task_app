import 'package:json_annotation/json_annotation.dart';

part 'get_service_response_model.g.dart';

@JsonSerializable()
class GetServiceResponseModel {
  List<GetRoutesData> routes;

  GetServiceResponseModel(this.routes);

  factory GetServiceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetServiceResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetServiceResponseModelToJson(this);
}

@JsonSerializable()
class GetRoutesData {
  GetBoundsData bounds;
  List<GetLegsData> legs;

  GetRoutesData(this.bounds, this.legs);

  factory GetRoutesData.fromJson(Map<String, dynamic> json) =>
      _$GetRoutesDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetRoutesDataToJson(this);
}

@JsonSerializable()
class GetBoundsData {
  GetNorthEastData northeast;
  GetSouthWestData southwest;

  GetBoundsData(this.northeast, this.southwest);

  factory GetBoundsData.fromJson(Map<String, dynamic> json) =>
      _$GetBoundsDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetBoundsDataToJson(this);
}

@JsonSerializable()
class GetNorthEastData {
  @JsonKey(defaultValue: 0.0)
  double? lat;
  @JsonKey(defaultValue: 0.0)
  double? lng;

  GetNorthEastData(this.lat, this.lng);

  factory GetNorthEastData.fromJson(Map<String, dynamic> json) =>
      _$GetNorthEastDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetNorthEastDataToJson(this);
}

@JsonSerializable()
class GetSouthWestData {
  @JsonKey(defaultValue: 0.0)
  double? lat;
  @JsonKey(defaultValue: 0.0)
  double? lng;

  GetSouthWestData(this.lat, this.lng);

  factory GetSouthWestData.fromJson(Map<String, dynamic> json) =>
      _$GetSouthWestDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetSouthWestDataToJson(this);
}

@JsonSerializable()
class GetLegsData {
  GetLegsDistance distance;
  GetLegsDistance duration;
  @JsonKey(defaultValue: '')
  String? end_address;
  GetNorthEastData end_location;
  @JsonKey(defaultValue: '')
  String start_address;
  GetNorthEastData start_location;
  List<LegStepsData> steps;

  GetLegsData(this.distance, this.duration, this.end_address, this.end_location,
      this.start_address, this.start_location, this.steps);

  factory GetLegsData.fromJson(Map<String, dynamic> json) =>
      _$GetLegsDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetLegsDataToJson(this);
}

@JsonSerializable()
class GetLegsDistance {
  @JsonKey(defaultValue: '')
  String? text;
  @JsonKey(defaultValue: 0)
  int? value;

  GetLegsDistance(this.text, this.value);

  factory GetLegsDistance.fromJson(Map<String, dynamic> json) =>
      _$GetLegsDistanceFromJson(json);
  Map<String, dynamic> toJson() => _$GetLegsDistanceToJson(this);
}

@JsonSerializable()
class LegStepsData {
  GetLegsDistance distance;
  GetLegsDistance duration;
  GetNorthEastData end_location;
  GetNorthEastData start_location;
  @JsonKey(defaultValue: '')
  String? travel_mode;

  LegStepsData(this.distance, this.duration, this.end_location,
      this.start_location, this.travel_mode);

  factory LegStepsData.fromJson(Map<String, dynamic> json) =>
      _$LegStepsDataFromJson(json);
  Map<String, dynamic> toJson() => _$LegStepsDataToJson(this);
}
