import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/app/app_router.dart';
import 'package:friends/gen/assets.gen.dart';
import 'package:friends/models/event.dart';
import 'package:friends/providers/my_events.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class EventsListScreen extends ConsumerWidget {
  const EventsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Events'),
        // centerTitle: false,
        actions: [
          IconButton(
            icon: Assets.icons.plusSquare.svg(width: 32, height: 32),
            onPressed: () {
              AutoRouter.of(context).push(const EventCreateRoute());
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(myEventsProvider);
        },
        child: ref.watch(myEventsProvider).when(
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
                    return Column(
                      children: [
                        _EventTile(
                          event: item,
                          onTap: () {
                            AutoRouter.of(context)
                                .push(EventUpdateRoute(event: item));
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        // SizedBox(height: 6,),
                      ],
                    );
                  },
                );
              },
            ),
      ),
    );
  }
}

class _EventTile extends StatelessWidget {
  final Event event;
  final Function()? onTap;
  const _EventTile({required this.event, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(event.title,
              style: GoogleFonts.ptSans(
                  fontSize: 16.sp, fontWeight: FontWeight.w500)),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                  onPressed: () {}, child: const Icon(Icons.check_rounded)),
              SizedBox(
                width: 8.w,
              ),
              OutlinedButton(onPressed: () {}, child: const Icon(Icons.delete))
            ],
          ),
        ),
        // SizedBox(
        //   height: 8.w,
        // ),
        // ListTile(
        //   leading: const CircleAvatar(
        //     radius: 32,
        //   ),
        //   trailing: Row(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       OutlinedButton(
        //           onPressed: () {}, child: const Icon(Icons.check_rounded)),
        //       SizedBox(
        //         width: 8.w,
        //       ),
        //       ElevatedButton(onPressed: () {}, child: const Icon(Icons.delete)),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
