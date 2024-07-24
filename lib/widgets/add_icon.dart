import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:note_app/providers/image_provider.dart';
import 'package:note_app/providers/link_provider.dart';

class AddIcon extends ConsumerWidget {
  final Function(TextEditingController) onAddNewLine;

  const AddIcon({super.key, required this.onAddNewLine});

  // Future<void> openAppBrowserView(String url) async {
  @override
  Widget build(BuildContext, WidgetRef ref) {
    // final TextEditingController linkController = TextEditingController();

    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                onAddNewLine(TextEditingController());
              },
              icon: Image.asset('assets/images/add_icon.png'),
            ),
            const Text(
              "Add a new line",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff98A2B3),
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                ref
                    .read(noteProvider.notifier)
                    .showTextInputDialog(BuildContext);
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: const Text('Enter new link'),
                //       content: TextField(
                //         controller: linkController,
                //         decoration:
                //             const InputDecoration(hintText: 'Enter URL'),
                //       ),
                //       actions: <Widget>[
                //         TextButton(
                //           child: const Text('Submit'),
                //           onPressed: () {
                //             final url = linkController.text;
                //             if (url.isNotEmpty) {}
                //           },
                //         ),
                //         TextButton(
                //           child: const Text('Open Link'),
                //           onPressed: () {
                //             final url = linkController.text;
                //             if (url.isNotEmpty) {
                //               openAppBrowserView(url);
                //               Navigator.of(context).pop();
                //             }
                //           },
                //         ),
                //       ],
                //     );
                //   },
                // );
              },
              icon: Image.asset('assets/images/add_icon.png'),
            ),
            const Text(
              "Add a link",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff98A2B3),
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                ref
                    .read(imageProviderForContentScreen.notifier)
                    .getImageGallery();
              },
              icon: Image.asset('assets/images/add_icon.png'),
            ),
            const Text(
              "Add a featured photo",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff98A2B3),
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/add_icon.png'),
            ),
            const Text(
              "Add a new emoji",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff98A2B3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
