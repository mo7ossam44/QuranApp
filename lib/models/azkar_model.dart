// class AzkarModel {
//   final int id;
//   final String text;
//   final int count;
//   final String audio;
//   final String filename;

//   AzkarModel({
//     required this.id,
//     required this.text,
//     required this.count,
//     required this.audio,
//     required this.filename,
//   });

//    factory AzkarModel.fromJson(Map<String, dynamic> json) {
//     return AzkarModel(
//       id: json['id'] ?? '',
//       text: json['text'] ?? '',
//       count: json['count'] ?? 0,
//       audio: json['audio'] ?? '',
//       filename: json['filename'] ?? '',
//     );
//   }

// }
class AzkarModel {
  final int id;
  final int count;
  final String text;
  final String audio;
  final String filename;

  AzkarModel({
    required this.id,
    required this.text,
    required this.count,
    required this.audio,
    required this.filename,
  });

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    return AzkarModel(
      id: json['id'] ?? 0,
      text: json['text'] ?? '',
      count: json['count'] ?? 0,
      audio: json['audio'] ?? '',
      filename: json['filename'] ?? '',
    );
  }
}

