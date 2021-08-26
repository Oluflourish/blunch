class User {
  final String name;

  User({this.name});

  static User fromJson(Map<String, dynamic> json) => User(name: json['name']);
}
