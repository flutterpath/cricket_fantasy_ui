class PlayerItemModel {
  String playerName;
  String playerImage;
  String country;
  String playerType;
  bool playingStatus;
  double points;
  double credits;
  bool isSelected;

  PlayerItemModel(
      this.playerName,
      this.playerImage,
      this.country,
      this.playerType,
      this.playingStatus,
      this.points,
      this.credits,
      {this.isSelected:false});
}