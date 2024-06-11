import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friends/models/event.dart';
import 'package:friends/models/event_form_data.dart';
import 'package:friends/providers/my_events.dart';
import 'package:friends/providers/user.dart';
import 'package:friends/services/api_client.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class EventUpdateScreen extends HookConsumerWidget {
  final Event event;
  const EventUpdateScreen(this.event, {super.key});

  Widget buildLabel(String text) {
    return Column(
      children: [
        Text(
          text,
          style:
              GoogleFonts.ptSans(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useTextEditingController(text: event.title);
    final description = useTextEditingController(text: event.description);
    final location = useTextEditingController(text: event.location);
    final datetime = useTextEditingController(text: event.datetime);

    Future<void> submit() async {
      try {
        final user = ref.watch(userProvider);
        await ref.read(myEventsProvider.notifier).updateEvent(
            event.id,
            EventFormData(
                title: title.text,
                description: description.text,
                location: location.text,
                datetime: datetime.text,
                userId: user!.id));
        if (!context.mounted) return;
        AutoRouter.of(context).maybePop();
      } on ApiClientException catch (e) {
        print('event update failed: ${e.responseMessage}');
        if (!context.mounted) return;
        // context.showTextSnackBar(e.responseMessage ?? 'Login failed');
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Update Event'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(myEventsProvider.notifier).remove(event.id);
                },
                icon: Icon(Icons.delete_outline))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildLabel('Title'),
                TextField(
                  controller: title,
                  textInputAction: TextInputAction.next,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                SizedBox(height: 12.sp),
                buildLabel('Description'),
                TextField(
                  controller: description,
                  minLines: 2,
                  maxLines: 5,
                  textInputAction: TextInputAction.next,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                SizedBox(height: 12.sp),
                buildLabel('Location'),
                TextField(
                  controller: location,
                  textInputAction: TextInputAction.next,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                SizedBox(height: 12.sp),
                buildLabel('Time and Date'),
                TextField(
                  controller: datetime,
                  textInputAction: TextInputAction.done,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: 16.sp,
            right: 16.sp,
            top: 12.sp,
            bottom: 24.sp,
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: submit,
              child: const Text('Update Event'),
            ),
          ),
        ));
  }
}
