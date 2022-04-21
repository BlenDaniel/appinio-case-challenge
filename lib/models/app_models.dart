import 'package:json_annotation/json_annotation.dart';

part 'app_models.g.dart';

@JsonSerializable()
class Forcast {
  const Forcast(
      {required this.product, required this.init, required this.dataseries});

  final String product;
  final String init;
  final List<Map<String, dynamic>> dataseries;

  factory Forcast.fromJson(Map<String, dynamic> json) =>
      _$ForcastFromJson(json);
  Map<String, dynamic> toJson() => _$ForcastToJson(this);
}

@JsonSerializable()
class Tempratures {
  const Tempratures({
    required this.timepoint,
    required this.cloudcover,
    required this.seeing,
    required this.transparency,
    required this.lifted_index,
    required this.rh2m,
    required this.wind10m,
    required this.temp2m,
    required this.prec_type,
  });

  final int timepoint;
  final int cloudcover;
  final int seeing;
  final int transparency;
  final int lifted_index;
  final int rh2m;
  final Map<String, dynamic> wind10m;
  final int temp2m;
  final String prec_type;

  factory Tempratures.fromJson(Map<String, dynamic> json) =>
      _$TempraturesFromJson(json);
  Map<String, dynamic> toJson() => _$TempraturesToJson(this);
}

@JsonSerializable()
class Wind10m {
  const Wind10m({required this.direction, required this.speed});
  final int speed;
  final String direction;

  factory Wind10m.fromJson(Map<String, dynamic> json) =>
      _$Wind10mFromJson(json);
  Map<String, dynamic> toJson() => _$Wind10mToJson(this);
}
