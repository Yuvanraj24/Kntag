import 'package:flutter/material.dart';
import 'package:kntag/widgets/Profile_view_widgets/book_club_container.dart';
import 'package:kntag/widgets/colorAndSize.dart';

class SavedView extends StatefulWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text("Saved"),
      ),
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 20,
        ),
        color: bgColor,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return BookclubContainer();
          },
        ),
      ),
    );
  }
}
