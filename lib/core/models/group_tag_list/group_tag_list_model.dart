class GroupTagList {
  String tagText;
  String subText;
  String address;
  GroupTagList(
      {required this.tagText, required this.subText, required this.address});
}

tagTileDatas() {
  List<GroupTagList> tagTileDetails = [];

  GroupTagList tileData = GroupTagList(tagText: "", subText: "", address: '');

  //1
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //2
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //3
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //4
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //5
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //6
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //7
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //8
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //9
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);
  //10
  tileData = GroupTagList(
      tagText: "#BookClub", subText: "13 Joined\n12/25 Spot Left", address: '');
  tagTileDetails.add(tileData);

  return tagTileDetails;
}