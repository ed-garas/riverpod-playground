import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user.dart';

part 'user.g.dart';

/// The user info of the currently logged in user.
@riverpod
User? user(UserRef ref) => Hive.box<User>('user').get('current');