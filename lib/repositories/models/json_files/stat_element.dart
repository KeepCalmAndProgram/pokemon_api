import 'stat_stat.dart';

class StatElement {
  final int baseStat;
  final int effort;
  final StatStat stat;

  StatElement({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatElement.fromJson(Map<String, dynamic> json) => StatElement(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: StatStat.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toJson(),
      };
}
