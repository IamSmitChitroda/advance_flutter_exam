class User {
  int id;
  String username;
  String password;

  User({this.id = 0, required this.username, required this.password});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        username: json['username'],
        password: json['password'],
      );
}
