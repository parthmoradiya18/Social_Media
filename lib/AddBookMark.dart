import 'package:shared_preferences/shared_preferences.dart';

void AddBookMark(list) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setStringList("list", list);
}

Future<List<String>?> ReadBookMark() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  List<String>? bookmarklist = sharedPreferences.getStringList("list");
  return bookmarklist;
}