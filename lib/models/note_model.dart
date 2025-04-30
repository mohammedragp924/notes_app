import 'package:hive/hive.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String suptitle;
  @HiveField(2)
  final String dateTime;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.suptitle,
    required this.dateTime,
    required this.color,
  });
}
