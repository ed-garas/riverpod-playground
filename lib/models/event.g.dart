// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      datetime: json['datetime'] as String,
      location: json['location'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'datetime': instance.datetime,
      'location': instance.location,
      'createdAt': instance.createdAt,
    };
