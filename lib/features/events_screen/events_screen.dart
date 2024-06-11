import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/gen/assets.gen.dart';

@RoutePage()
class EventsScreen extends ConsumerWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Assets.images.hellomate.svg(height: 28),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Assets.icons.filterSquare.svg(width: 32, height: 32),
            onPressed: () {
              // AutoRouter.of(context).push(CreateEventRoute());
            },
          ),
        ],
      ),
      body: Center(
        child: Text('events'),
      ),
    );
  }
}
