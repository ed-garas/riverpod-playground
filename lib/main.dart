import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:friends/models/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'app/app.dart';
import 'models/event.dart';

void main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize Hive.
    await initHive();

    runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error: $error');
  });
}

Future<void> initHive() async {
  await Hive.initFlutter();
  const secureKey = 'secure_key';
  HiveCipher? encryptionCipher;

  // try {
  //   const secureStorage = FlutterSecureStorage();
  //   final encryptionKeyString = await secureStorage.read(key: secureKey);
  //   if (encryptionKeyString == null) {
  //     final key = Hive.generateSecureKey();
  //     await secureStorage.write(
  //       key: secureKey,
  //       value: base64UrlEncode(key),
  //     );
  //   }
  //   final key = await secureStorage.read(key: secureKey);
  //   final encryptionKeyUint8List = base64Url.decode(key!);
  //   encryptionCipher = HiveAesCipher(encryptionKeyUint8List);
  // } catch (e) {
  //   print('initHive: Caught error: $e');
  // }
  // Register adapters.
  Hive.registerAdapter(UserAdapter());
  // Open boxes.
  await [
    Hive.openBox<User>('user', encryptionCipher: encryptionCipher),
    Hive.openBox<String>('token', encryptionCipher: encryptionCipher),
  ].wait;
}
