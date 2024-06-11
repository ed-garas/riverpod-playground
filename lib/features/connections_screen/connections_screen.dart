import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/models/user.dart';
import 'package:friends/services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connections_screen.g.dart';

@riverpod
Future<List<User>> connections(ConnectionsRef ref) async {
  final api = ref.watch(apiServiceProvider);
  final items = await api.getConnections();
  return items;
}

@RoutePage()
class ConnectionsScreen extends ConsumerWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connections'),
        centerTitle: false,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(connectionsProvider);
        },
        child: ref.watch(connectionsProvider).when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => Center(
            child: Text('Error: $error'),
          ),
          data: (items) {
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 34,
                    backgroundImage: NetworkImage(item.avatar),
                  ),
                  title: Text(item.name),
                  subtitle: Text(item.email),
                  shape: const Border(bottom: BorderSide(color: Colors.grey)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
