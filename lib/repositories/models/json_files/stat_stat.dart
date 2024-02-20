class StatStat {
  final String name;
  final String url;

  StatStat({
    required this.name,
    required this.url,
  });

  factory StatStat.fromJson(Map<String, dynamic> json) => StatStat(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
