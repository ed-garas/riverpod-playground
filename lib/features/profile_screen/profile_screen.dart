import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/providers/auth_provider.dart';
import 'package:friends/providers/user.dart';

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Name'),
            subtitle: Text(ref.watch(userProvider)?.name ?? ''),
          ),
          ListTile(
            title: const Text('Surname'),
            subtitle: Text(ref.watch(userProvider)?.surname ?? ''),
          ),
          ListTile(
            title: const Text('Email'),
            subtitle: Text(ref.watch(userProvider)?.email ?? ''),
          ),
          ListTile(
            title: const Text('Logout'),
            tileColor: Colors.red.shade50,
            onTap: () {
              ref.read(authenticationProvider.notifier).logout();
            },
          ),
        ],
      ),
    );
  }
}
