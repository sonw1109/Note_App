import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_app/models/note.dart';

class SavenoteNotifier extends StateNotifier<List<Note>> {
  SavenoteNotifier() : super([]);

  void saveNote(Note note) {
    state = [...state, note];
  }

  void tapNote(Note note) {}
}

final saveProvider = StateNotifierProvider<SavenoteNotifier, List<Note>>((ref) {
  return SavenoteNotifier();
});
