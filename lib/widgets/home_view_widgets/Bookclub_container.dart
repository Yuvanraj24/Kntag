import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kntag/core/models/group_tag_list/group_tag_list_model.dart';
import 'package:kntag/widgets/colorAndSize.dart';
import 'package:sizer/sizer.dart';

import '../../ui/views/home_view/event_details_view/event_details_view.dart';

class BookClubContainer extends StatefulWidget {
  String tagText;
  String location;
  String date;
  String time;
  String joined;
  String spotsLeft;
  String profile;
  List userProfile;
  String page;
  BookClubContainer({
    required this.tagText,
    required this.location,
    required this.date,
    required this.time,
    required this.spotsLeft,
    required this.joined,
    required this.profile,
    required this.userProfile,
    required this.page,
  });
  @override
  State<BookClubContainer> createState() => _BookClubContainerState();
}

class _BookClubContainerState extends State<BookClubContainer> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Route _createRoute() {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                EventDetailsView(
              date: widget.date,
              host: widget.profile,
              time: widget.time,
              location: widget.location,
              title: widget.tagText,
              MembersList: widget.userProfile,
              membersJoined: widget.joined,
              spotLeft: widget.spotsLeft,
              ShowcaseImage: [
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                // "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
                // "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
              ],
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        }

        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => EventDetailsView(
              date: widget.date,
              host: widget.profile,
              time: widget.time,
              location: widget.location,
              title: widget.tagText,
              MembersList: widget.userProfile,
              membersJoined: widget.joined,
              spotLeft: widget.spotsLeft,
              ShowcaseImage: [
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
                "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
              ],
            ),
          ),
        ); // Navigator.of(context).push(_createRoute());
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 6.0, left: 2.0, bottom: 4),
        child: GestureDetector(
          child: Stack(
            children: [
              widget.page == "Home"
                  ? Center(
                      child: Container(
                        color: transparent,
                        width: 90.w,
                        height: 35.h,
                        child: Stack(
                          // alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                              child: Container(
                                color: Colors.transparent,
                                height: currentHeight,
                                child: Center(
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                                    width: currentWidth * 0.96,
                                    height: currentHeight * 0.2,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black87
                                                .withOpacity(0.100),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.tagText,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue[900],
                                                    fontSize: 13.sp,
                                                  ),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                ),
                                                Spacer(),
                                                Text(
                                                    "Location: ${widget.location}",
                                                    style: TextStyle(
                                                      color: greyText,
                                                      fontSize: 13.sp,
                                                    )),
                                                Text(
                                                  "${widget.date} : ${widget.time}",
                                                  style: TextStyle(
                                                    color: greyText,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Divider(
                                                  endIndent: 210,
                                                  color: greyText,
                                                ),
                                                Row(
                                                  children: [
                                                    buildStackedImages(),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "${widget.joined} Joined . ${widget.spotsLeft} Spot Left",
                                                      style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: greyText),
                                                    ),
                                                  ],
                                                )
                                              ]),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              child: Container(
                                                height: currentHeight * 0.1,
                                                width: currentWidth * 0.20,
                                                child: Image.network(
                                                  profilepic1,
                                                  fit: BoxFit.cover,
                                                ),
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: currentHeight * 0.194,
                              right: currentWidth * 0.08,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(widget.profile),
                              ),
                            ),
                            Positioned(
                              bottom: currentHeight * 0.001,
                              right: currentWidth * 0.045,
                              child: ElevatedButton(
                                  onPressed: () {
                                    print("datee: ");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        fullscreenDialog: true,
                                        builder: (context) => EventDetailsView(
                                          date: widget.date,
                                          host: widget.profile,
                                          time: widget.time,
                                          location: widget.location,
                                          title: widget.tagText,
                                          MembersList: widget.userProfile,
                                          membersJoined: widget.joined,
                                          spotLeft: widget.spotsLeft,
                                          ShowcaseImage: [
                                            "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
                                            "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
                                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                                            "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
                                            "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      onPrimary: buttonBlue),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 7,
                                      right: 7,
                                    ),
                                    child: Text(
                                      "Join",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, bottom: 8, left: 11, right: 11),
                      child: Container(
                        color: transparent,
                        width: currentWidth,
                        height: currentHeight * 0.18,
                        child: Stack(
                          // alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              color: Colors.transparent,
                              height: currentHeight,
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  width: currentWidth * 0.90,
                                  height: currentHeight * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.tagText,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue[900],
                                                    fontSize: 13.sp),
                                              ),
                                              Spacer(),
                                              Text(
                                                  "Location: ${widget.location}",
                                                  style: TextStyle(
                                                      color: greyText,
                                                      fontSize: 12.sp)),
                                              Text(
                                                "${widget.date} : ${widget.time}",
                                                style: TextStyle(
                                                    color: greyText,
                                                    fontSize: 12.sp),
                                              ),
                                              SizedBox(
                                                height: 2.sp,
                                              ),
                                              Divider(
                                                endIndent: 10.sp,
                                                color: greyText,
                                              ),
                                              Row(
                                                children: [
                                                  buildStackedImages(),
                                                  SizedBox(
                                                    width: 2.5.sp,
                                                  ),
                                                  Text(
                                                    "${widget.joined} Joined . ${widget.spotsLeft} Spot Left",
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        color: greyText),
                                                  ),
                                                ],
                                              )
                                            ]),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: Container(
                                              height: currentHeight * 0.1,
                                              width: currentWidth * 0.20,
                                              child: Image.network(
                                                profilepic1,
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: currentHeight * 0.120,
                              right: currentWidth * 0.10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(widget.profile),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }

  //Method for calling StackedWidgets class & for passing image url
  Widget buildStackedImages() {
    final double size = 22;
    final urlImages = widget.userProfile;

    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidget(
      items: items,
      size: size,
    );
  }

  // Method for providing image $ shape circle
  Widget buildImage(String urlImage) {
    final double borderSize = 0.8;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
