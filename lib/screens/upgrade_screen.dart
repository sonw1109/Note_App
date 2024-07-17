import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/models/note.dart';
import 'package:note_app/providers/savenote_provider.dart';

class UpgradeScreen extends ConsumerWidget {
  const UpgradeScreen({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(saveProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(21, 0, 0, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note.d",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Enjoy note taking with friends",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/avt.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 24, 21, 0),
        child: MasonryGridView.builder(
          itemCount: notes.length + 1,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                height: 171,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(
                    color: const Color(0xffB9E6FE),
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                    const Text("New Note"),
                  ],
                ),
              );
            }
            final note = notes[index - 1];
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(
                    color: const Color(0xffE4E7EC),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notes[index].title,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text(notes[index].content),
                      if (notes[index].additionalContents != null)
                        ...notes[index]
                            .additionalContents!
                            .map((item) => Text(item)),
                      if (note.link != null)
                        Text(
                          notes[index].link.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      Container(
                        height: 8,
                      ),
                      if (notes[index].image != null)
                        Image.file(File(note.image!)),
                      Container(
                        height: 8,
                      ),
                      Text(notes[index].time),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
