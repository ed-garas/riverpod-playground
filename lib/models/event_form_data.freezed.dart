// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventFormData _$EventFormDataFromJson(Map<String, dynamic> json) {
  return _EventFormData.fromJson(json);
}

/// @nodoc
mixin _$EventFormData {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventFormDataCopyWith<EventFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormDataCopyWith<$Res> {
  factory $EventFormDataCopyWith(
          EventFormData value, $Res Function(EventFormData) then) =
      _$EventFormDataCopyWithImpl<$Res, EventFormData>;
  @useResult
  $Res call(
      {String title,
      String description,
      String datetime,
      String location,
      String userId});
}

/// @nodoc
class _$EventFormDataCopyWithImpl<$Res, $Val extends EventFormData>
    implements $EventFormDataCopyWith<$Res> {
  _$EventFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? datetime = null,
    Object? location = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFormDataImplCopyWith<$Res>
    implements $EventFormDataCopyWith<$Res> {
  factory _$$EventFormDataImplCopyWith(
          _$EventFormDataImpl value, $Res Function(_$EventFormDataImpl) then) =
      __$$EventFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String datetime,
      String location,
      String userId});
}

/// @nodoc
class __$$EventFormDataImplCopyWithImpl<$Res>
    extends _$EventFormDataCopyWithImpl<$Res, _$EventFormDataImpl>
    implements _$$EventFormDataImplCopyWith<$Res> {
  __$$EventFormDataImplCopyWithImpl(
      _$EventFormDataImpl _value, $Res Function(_$EventFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? datetime = null,
    Object? location = null,
    Object? userId = null,
  }) {
    return _then(_$EventFormDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventFormDataImpl extends _EventFormData {
  const _$EventFormDataImpl(
      {required this.title,
      required this.description,
      required this.datetime,
      required this.location,
      required this.userId})
      : super._();

  factory _$EventFormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventFormDataImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String datetime;
  @override
  final String location;
  @override
  final String userId;

  @override
  String toString() {
    return 'EventFormData(title: $title, description: $description, datetime: $datetime, location: $location, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFormDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, datetime, location, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFormDataImplCopyWith<_$EventFormDataImpl> get copyWith =>
      __$$EventFormDataImplCopyWithImpl<_$EventFormDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventFormDataImplToJson(
      this,
    );
  }
}

abstract class _EventFormData extends EventFormData {
  const factory _EventFormData(
      {required final String title,
      required final String description,
      required final String datetime,
      required final String location,
      required final String userId}) = _$EventFormDataImpl;
  const _EventFormData._() : super._();

  factory _EventFormData.fromJson(Map<String, dynamic> json) =
      _$EventFormDataImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get datetime;
  @override
  String get location;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$EventFormDataImplCopyWith<_$EventFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
