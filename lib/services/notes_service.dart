import 'package:shared_preferences/shared_preferences.dart';

class NotesService {
  static const String _key = "notes";

  Future<List<String>> getNotes() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  Future<void> addNote(String note) async {
    final prefs = await SharedPreferences.getInstance();
    final notes = prefs.getStringList(_key) ?? [];
    notes.add(note);
    await prefs.setStringList(_key, notes);
  }

  Future<void> deleteNote(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final notes = prefs.getStringList(_key) ?? [];
    notes.removeAt(index);
    await prefs.setStringList(_key, notes);
  }
}
