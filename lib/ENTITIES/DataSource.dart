import 'dart:convert';

List<DataSource> dataSourceFromJson(String str) => List<DataSource>.from(json.decode(str).map((x) => DataSource.fromJson(x)));

String dataSourceToJson(List<DataSource> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataSource {
  DataSource({
    required this.standard,
    required this.subjects,
  });

  final String standard;
  final List<Subject>? subjects;

  factory DataSource.fromJson(Map<String, dynamic> json) => DataSource(
    standard: json["standard"],
    subjects: json["subjects"] == null ? null : List<Subject>.from(json["subjects"].map((x) => Subject.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "standard": standard,
    "subjects": subjects == null ? null : List<dynamic>.from(subjects!.map((x) => x.toJson())),
  };
}

class Subject {
  Subject({
    required this.subjectName,
    required this.subjectImage,
  });

  final String subjectName;
  final String subjectImage;

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subjectName: json["subject_name"],
    subjectImage: json["subject_image"],
  );

  Map<String, dynamic> toJson() => {
    "subject_name": subjectName,
    "subject_image": subjectImage,
  };
}
