// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_form_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventFormDataImpl _$$EventFormDataImplFromJson(Map<String, dynamic> json) =>
    _$EventFormDataImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      datetime: json['datetime'] as String,
      location: json['location'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$EventFormDataImplToJson(_$EventFormDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'datetime': instance.datetime,
      'location': instance.location,
      'userId': instance.userId,
    };
