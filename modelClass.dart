class ModelClass {
  int? userId;
  int? id;
  String? title;
  String? body;

  ModelClass({this.userId, this.id, this.title, this.body});

  ModelClass.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  }
