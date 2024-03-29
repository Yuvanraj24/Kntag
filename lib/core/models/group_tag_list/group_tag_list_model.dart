class GroupTagList {
  String myProfile;
  String tagText;
  String location;
  String date;
  String time;
  String joined;
  String spotLeft;
  List userProfileData;
  String latitude;
  String longitude;
  data() {}

  GroupTagList({
    required this.tagText,
    required this.location,
    required this.date,
    required this.time,
    required this.joined,
    required this.spotLeft,
    required this.myProfile,
    required this.userProfileData,
    required this.latitude,
    required this.longitude,
  });
}

String profilepic =
    "https://images.unsplash.com/photo-1521714161819-15534968fc5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
String profilepic1 =
    "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

String profilepic2 =
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
String profilepic3 =
    "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

tagTileDatas() {
  List<GroupTagList> groupTileDetails = [];

  GroupTagList tileData = GroupTagList(
    tagText: "",
    date: "",
    location: '',
    time: '',
    latitude: "",
    longitude: '',
    joined: '',
    spotLeft: '',
    myProfile: '',
    userProfileData: [],
  );

  //1
  tileData = GroupTagList(
    tagText: "#Gaming",
    date: "2022-07-25",
    location: 'Race Course',
    time: '08pm to 10:15pm',
    joined: '13',
    spotLeft: '12/25',
    myProfile: profilepic,
    latitude: "11.004293973227782",
    longitude: '76.94530308288358',
    userProfileData: [profilepic1, profilepic3],
  );
  groupTileDetails.add(tileData);

  //2
  tileData = GroupTagList(
    tagText: "#Movie",
    date: "2022-07-13",
    location: 'Gandhi park',
    time: '06pm to 08pm',
    joined: '14',
    spotLeft: '11/25',
    latitude: "10.998512601026043",
    longitude: '76.94942841244911',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);
  //3
  tileData = GroupTagList(
    tagText: "#SaturdayParty",
    latitude: "11.009547463197949",
    date: "2022-04-29",
    longitude: '76.95292804791794',
    location: 'RS.puram',
    time: '06pm to 8:30pm',
    joined: '5',
    spotLeft: '20/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //4
  tileData = GroupTagList(
    tagText: "#MovieTonight",
    date: "2022-06-13",
    location: 'Thadagam road',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    time: '07pm to 11pm',
    joined: '20',
    spotLeft: '05/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //5
  tileData = GroupTagList(
    tagText: "#ShortFilm",
    date: "2022-08-22",
    location: 'Town Hall',
    time: '07pm to 10:30pm',
    joined: '3',
    latitude: "11.045960855414371",
    longitude: '76.92226271503328',
    spotLeft: '22/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //6
  tileData = GroupTagList(
    tagText: "#Know More About Space",
    date: "2022-07-25",
    location: 'barathi park',
    time: '08pm to 11:30pm',
    latitude: "11.019757974505831",
    longitude: '11.019757974505831',
    joined: '24',
    spotLeft: '01/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //7
  tileData = GroupTagList(
    tagText: "#Music for life",
    date: "2022-06-13",
    location: 'saravanampati',
    latitude: "11.08781140145019",
    longitude: '77.00110677971874',
    time: '07pm to 10:30pm',
    joined: '19',
    spotLeft: '06/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );

  groupTileDetails.add(tileData);

  return groupTileDetails;
}

groupTileDatas() {
  List<GroupTagList> groupTileDetails = [];

  GroupTagList tileData = GroupTagList(
    tagText: "",
    date: "",
    location: '',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    time: '',
    joined: '',
    spotLeft: '',
    myProfile: '',
    userProfileData: [],
  );

  //1
  tileData = GroupTagList(
    tagText: "#Movie",
    date: "2022-07-01",
    location: 'prozone',
    time: '07pm to 10pm',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    joined: '15',
    spotLeft: '10/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic3],
  );
  groupTileDetails.add(tileData);

  //2
  tileData = GroupTagList(
    tagText: "#Party",
    date: "2022-08-23",
    location: 'L.G.B colony',
    time: '6pm to 10:30pm',
    joined: '17',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    spotLeft: '08/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);
  //3
  tileData = GroupTagList(
    tagText: "#Scripting",
    date: "2022-04-29",
    location: 'N.G.G.O colony',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    time: '07pm to 08pm',
    joined: '10',
    spotLeft: '15/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //4
  tileData = GroupTagList(
    tagText: "#Movie Making",
    date: "2022-06-13",
    location: 'ganapathy',
    latitude: "10.999390796154014",
    time: '07pm to 11:30pm',
    longitude: '76.97610889402333',
    joined: '13',
    spotLeft: '12/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //5
  tileData = GroupTagList(
    tagText: "#lets ride",
    date: "2022-07-12",
    location: 'gandhi puram',
    time: '08pm to 12:30pm',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    joined: '10',
    spotLeft: '15/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //6
  tileData = GroupTagList(
    tagText: "#Science and more",
    date: "2022-10-25",
    location: 'ooty',
    latitude: "10.999390796154014",
    longitude: '76.97610889402333',
    time: '07pm to 10:30pm',
    joined: '25',
    spotLeft: '00/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );
  groupTileDetails.add(tileData);

  //7
  tileData = GroupTagList(
    tagText: "#fun",
    date: "2022-06-13",
    location: 'barathi nagar',
    time: '07pm to 10m',
    longitude: '76.97610889402333',
    joined: '15',
    latitude: "10.999390796154014",
    spotLeft: '10/25',
    myProfile: profilepic,
    userProfileData: [profilepic1, profilepic2, profilepic3],
  );

  groupTileDetails.add(tileData);

  return groupTileDetails;
}
