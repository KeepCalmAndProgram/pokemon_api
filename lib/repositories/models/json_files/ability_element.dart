import 'ability_ability.dart';

class AbilityElement {
  final AbilityAbility ability;
  final bool isHidden;
  final int slot;

  AbilityElement({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilityElement.fromJson(Map<String, dynamic> json) => AbilityElement(
    ability: AbilityAbility.fromJson(json["ability"]),
    isHidden: json["is_hidden"],
    slot: json["slot"],
  );

  Map<String, dynamic> toJson() => {
    "ability": ability.toJson(),
    "is_hidden": isHidden,
    "slot": slot,
  };
}