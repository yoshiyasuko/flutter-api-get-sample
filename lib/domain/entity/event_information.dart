class EventInformation {
  int id;
  String day;
  int hour;
  String content;
  int version;

  EventInformation(
      {required this.id,
      required this.day,
      required this.hour,
      required this.content,
      required this.version});

  factory EventInformation.fromJson(Map<String, dynamic> json) {
    return EventInformation(
        id: json['Id'],
        day: json['day'],
        hour: json['hour'],
        content: json['content'],
        version: json['version']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data['id'] = this.id;
    data['day'] = this.day;
    data['hour'] = this.hour;
    data['content'] = this.content;
    data['version'] = this.version;
    return data;
  }
}
