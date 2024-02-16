import 'home.dart';

class Other {
  final Home home;
  final Home showdown;

  Other({
    required this.home,
    required this.showdown,
  });

  factory Other.fromJson(Map<String, dynamic> json) => Other(
    home: Home.fromJson(json["home"]),
    showdown: Home.fromJson(json["showdown"]),
  );

  Map<String, dynamic> toJson() => {
    "home": home.toJson(),
    "showdown": showdown.toJson(),
  };
}