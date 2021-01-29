class Task {
  int id;
  String title;
  DateTime date;
  int status; //0 incomplete, 1 complete

  Task({this.title, this.date, this.status});
  Task.withId({this.id, this.title, this.date, this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['date'] = date.toIso8601String();
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
        id: map['id'],
        title: map['title'],
        date: DateTime.parse(map['date']),
        status: map['status']);
  }
}
