class Wallpaper {
  int id;
  String url;
  String user;

  Wallpaper({this.id = 0, required this.url, required this.user});

  factory Wallpaper.fromJson(Map<String, dynamic> json) {
    return Wallpaper(
      id: json['id'],
      url: json['url'],
      user: json['user'],
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'url': url,
        'user': user,
      };
}
