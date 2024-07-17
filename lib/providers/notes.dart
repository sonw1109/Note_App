import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_app/models/note.dart';

class NoteNotifier extends StateNotifier<Note?> {
  NoteNotifier() : super(null);

  void setNote(Note note) {
    state = note;
  }
}

final currentNoteProvider = StateNotifierProvider<NoteNotifier, Note?>((ref) {
  return NoteNotifier();
});
