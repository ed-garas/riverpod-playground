import 'package:friends/models/event.dart';
import 'package:friends/models/event_form_data.dart';
import 'package:friends/providers/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/login.dart';
import '../models/user.dart';
import '../services/api_service.dart';

part 'my_events.g.dart';

@riverpod
class MyEvents extends _$MyEvents {
  @override
  Future<List<Event>> build() async {
    final user = ref.watch(userProvider);
    final api = ref.watch(apiServiceProvider);
    final items = await api.getEvents(userId: user?.id);
    return items;
  }

  Future<void> create(EventFormData data) async {
    await ref.read(apiServiceProvider).createEvent(data);
    ref.invalidateSelf();
  }

  Future<void> updateEvent(String id, EventFormData data) async {
    await ref.read(apiServiceProvider).updateEvent(id, data);
    ref.invalidateSelf();
  }

  Future<void> remove(String id) async {
    await ref.read(apiServiceProvider).removeEvent(id);
    ref.invalidateSelf();
  }
}
