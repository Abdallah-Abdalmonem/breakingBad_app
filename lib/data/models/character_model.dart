class CharacterModel {
  final int charId;
  final String name;
  final String nickname;
  final String img;
  final List<dynamic> jobs;
  final String statusIfDeadOrAlive;
  final List<dynamic> appearanceOfSessons;
  final String acotrName;
  final String categoryForTwoSeries;
  final List<dynamic> betterCallSaulAppearance;

  CharacterModel(
      {required this.charId,
      required this.name,
      required this.nickname,
      required this.img,
      required this.jobs,
      required this.statusIfDeadOrAlive,
      required this.appearanceOfSessons,
      required this.acotrName,
      required this.categoryForTwoSeries,
      required this.betterCallSaulAppearance});

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
        charId: json['char_id'],
        name: json['name'],
        nickname: json['nickname'],
        img: json['img'],
        jobs: json['occupation'],
        statusIfDeadOrAlive: json['status'],
        appearanceOfSessons: json['appearance'],
        acotrName: json['portrayed'],
        categoryForTwoSeries: json['category'],
        betterCallSaulAppearance: json['better_call_saul_appearance']);
  }
}
