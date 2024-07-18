import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_app/models/note.dart';
import 'package:note_app/providers/database_service.dart';

class SavenoteNotifier extends StateNotifier<List<Note>> {
  SavenoteNotifier() : super([]);

  final DatabaseService _databaseService = DatabaseService.instance;

  void saveNote(Note note) {
    state = [...state, note];
  }

  void deleteNote(Note note) {
    state = state.where((n) => n.idNote != note.idNote).toList();
  }

  void updateNote(Note note) {
    state = [
      for (final n in state)
        if (n.idNote == note.idNote) note else n
    ];
  }

  Future<void> getDataFromTable() async {
    // TODO: result = GET dwx lieeuj twf table
    final List<Note> result = await _databaseService.getNote();
    state = result;
  }
}

final saveProvider = StateNotifierProvider<SavenoteNotifier, List<Note>>((ref) {
  return SavenoteNotifier();
});
