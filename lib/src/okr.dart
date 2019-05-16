class OKR {
  int id;
  String title;
  String description;
  String tags;

  OKR(this.id, this.title, this.description, this.tags);

  factory OKR.fromJson(Map<String, dynamic> json) =>
    OKR(_toInt(json['id']), json['title'], json['description'], json['tags']);
}

int _toInt(id) => id is int ? id : int.parse(id);