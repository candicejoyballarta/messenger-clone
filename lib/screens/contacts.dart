import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/convo.dart';
import 'package:messenger_clone/widgets/myday.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({Key key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("images/c1.png"),
                            ),
                          ),
                          Positioned(
                              right: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Text(
                                      "+9",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ))),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.add,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  MyDayWidget(false, img: "images/c1.png", online: true),
                  MyDayWidget(true, img: "images/c2.jpg", online: true),
                  MyDayWidget(true, img: "images/c3.png", online: true),
                  MyDayWidget(true, img: "images/c4.png", online: true),
                  MyDayWidget(true, img: "images/c5.png", online: false),
                  MyDayWidget(true, img: "images/c6.png", online: false),

                ],
              ),
            ),

            SizedBox(height: 10,),

            Convo(
              image: "images/c2.jpg",
              name: "Toast",
              msg: "Wanna play Among Us with Lily?",
              isRead: false,
            ),

            Convo(
              image: "images/c3.png",
              name: "LilyPichu",
              msg: "AMONG US!!!!1!11!!",
              isRead: false,
            ),

            Convo(
              image: "images/c4.png",
              name: "Aceu",
              msg: "POGGERS!",
              isRead: true,
            ),
          ],
        ),
      ),
    );
  }
}


