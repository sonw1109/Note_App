import 'package:intl/intl.dart';

class Note {
  Note({
    int? idNote,
    required this.title,
    required this.content,
    this.image,
    this.link,
    String? time,
    this.additionalContents,
  }) : time = time ?? DateFormat('yyyy-MM-dd').format(DateTime.now());

  int? idNote;
  final String title;
  final String content;
  String? image;
  String? link;
  final String time;
  List<String>? additionalContents;

  Note updateNote({
    String? title,
    String? content,
    String? image,
    String? link,
  }) {
    return Note(
      idNote: idNote,
      title: title ?? this.title,
      content: content ?? this.content,
      image: image ?? this.image,
      link: link ?? this.link,
    );
  }

  // Copy method for immutability
  Note copyWith({
    String? title,
    String? content,
    List<String>? additionalContents,
    String? link,
    String? imagePath,
  }) {
    return Note(
      title: title ?? this.title,
      content: content ?? this.content,
      additionalContents: additionalContents ?? this.additionalContents,
      link: link ?? this.link,
      image: image ?? this.image,
    );
  }
}
