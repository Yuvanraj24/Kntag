import 'package:flutter/material.dart';

class NotificationTile extends StatefulWidget {
  String oppProfile;
  String tagText;
  String status;
  // String date;
  String oppName;

  NotificationTile({
    required this.oppProfile,
    required this.tagText,
    required this.status,
    // String date;
    required this.oppName,
  });

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 6.5, left: 10, right: 10),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          width: currentWidth * 0.2,
          height: widget.status == "request"
              ? currentHeight / 8
              : currentHeight / 11,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  widget.oppProfile,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.oppName,
                          //"#BookClub",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Spacer(),
                      widget.status == "request"
                          ? Expanded(
                              child: Text(
                                "Has ${widget.status}ed to join",
                                //"13 Joined\n12/25 Spot Left",
                                style: TextStyle(
                                  color: Colors.black38,
                                ),
                              ),
                            )
                          : Expanded(
                              child: Text(
                                "Has ${widget.status}ed your request",
                                //"13 Joined\n12/25 Spot Left",
                                style: TextStyle(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                      Expanded(
                        child: Text(
                          "${widget.tagText}",
                          //"13 Joined\n12/25 Spot Left",
                          style: TextStyle(color: Colors.black38, fontSize: 11),
                        ),
                      ),
                    ]),
              ),
              Spacer(),
              widget.status == "request"
                  ? Expanded(
                      flex: 3,
                      child: ElevatedButton(
                          onPressed: () {
                            print("approve");
                          },
                          child: Text(
                            "Approve",
                            style: TextStyle(fontSize: 10),
                          )))
                  : SizedBox(),
              widget.status == "request"
                  ? Expanded(
                      child: GestureDetector(
                          onTap: () {
                            print("cancel");
                          },
                          child: Icon(Icons.close)),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
