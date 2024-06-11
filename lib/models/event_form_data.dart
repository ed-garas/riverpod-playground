import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_form_data.freezed.dart';
part 'event_form_data.g.dart';

@freezed
class EventFormData with _$EventFormData {
  const EventFormData._();
  const factory EventFormData({
    required String title,
    required String description,
    required String datetime,
    required String location,
    required String userId,
  }) = _EventFormData;

  factory EventFormData.fromJson(Map<String, Object?> json) => _$EventFormDataFromJson(json);
}
