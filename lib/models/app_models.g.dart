// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forcast _$ForcastFromJson(Map<String, dynamic> json) => Forcast(
      product: json['product'] as String,
      init: json['init'] as String,
      dataseries: (json['dataseries'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$ForcastToJson(Forcast instance) => <String, dynamic>{
      'product': instance.product,
      'init': instance.init,
      'dataseries': instance.dataseries,
    };

Tempratures _$TempraturesFromJson(Map<String, dynamic> json) => Tempratures(
      timepoint: json['timepoint'] as int,
      cloudcover: json['cloudcover'] as int,
      seeing: json['seeing'] as int,
      transparency: json['transparency'] as int,
      lifted_index: json['lifted_index'] as int,
      rh2m: json['rh2m'] as int,
      wind10m: json['wind10m'] as Map<String, dynamic>,
      temp2m: json['temp2m'] as int,
      prec_type: json['prec_type'] as String,
    );

Map<String, dynamic> _$TempraturesToJson(Tempratures instance) =>
    <String, dynamic>{
      'timepoint': instance.timepoint,
      'cloudcover': instance.cloudcover,
      'seeing': instance.seeing,
      'transparency': instance.transparency,
      'lifted_index': instance.lifted_index,
      'rh2m': instance.rh2m,
      'wind10m': instance.wind10m,
      'temp2m': instance.temp2m,
      'prec_type': instance.prec_type,
    };

Wind10m _$Wind10mFromJson(Map<String, dynamic> json) => Wind10m(
      direction: json['direction'] as String,
      speed: json['speed'] as int,
    );

Map<String, dynamic> _$Wind10mToJson(Wind10m instance) => <String, dynamic>{
      'speed': instance.speed,
      'direction': instance.direction,
    };
