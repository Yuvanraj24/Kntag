import 'package:flutter/material.dart';
import 'package:kntag/core/models/group_tag_list/group_tag_list_model.dart';
import 'package:kntag/widgets/message_view_widget/message_tag_tile.dart';

class ActiveMessageView extends StatefulWidget {
  ActiveMessageView({Key? key}) : super(key: key);

  @override
  State<ActiveMessageView> createState() => _ActiveMessageViewState();
}

class _ActiveMessageViewState extends State<ActiveMessageView> {
  void initState() {
    // TODO: implement initState
    super.initState();
    containerDetails = tagTileDatas();
  }

  @override
  List<GroupTagList> containerDetails = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: containerDetails.length,
        itemBuilder: (context, index) {
          return MessageTagTile(
            tagText: containerDetails[index].tagText,
            joinedCount: containerDetails[index].joined,
            leftCount: containerDetails[index].spotLeft,
            userProfile: containerDetails[index].userProfileData,
          );
        },
      ),
    );
  }
}
