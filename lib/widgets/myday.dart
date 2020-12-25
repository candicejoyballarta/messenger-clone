import 'package:flutter/material.dart';

class MyDayWidget extends StatelessWidget {
  final String img;
  final bool status;
  final bool online;

  const MyDayWidget(this.status, {Key key, this.img, @required this.online}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: status
                    ? Border.all(
                        color: Colors.blue,
                        width: 3,
                      )
                    : Border.all(
                        color: Colors.white,
                        width: 4,
                      )),
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(img),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 2,
            child: Visibility(
              visible: online,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
