
class AbilityAbility {
  final String name;
  final String url;

  AbilityAbility({
    required this.name,
    required this.url,
  });

  factory AbilityAbility.fromJson(Map<String, dynamic> json) => AbilityAbility(
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
  };
}