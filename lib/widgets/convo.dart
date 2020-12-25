import 'package:flutter/material.dart';

class Convo extends StatelessWidget {
  final String image;
  final String name;
  final String msg;
  final bool isRead;

  const Convo({Key key, this.image, this.name, this.msg, this.isRead,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundColor: Colors.grey[300],
        backgroundImage: AssetImage(image),
      ),
      title: Text(name, style: isRead ? TextStyle(fontWeight: FontWeight.normal) : TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(msg, style: isRead ? TextStyle(fontWeight: FontWeight.normal) : TextStyle(fontWeight: FontWeight.bold),),
      trailing: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white,),
          borderRadius: BorderRadius.circular(20),
          color: isRead ? Colors.white : Colors.blue,
        ),
      ),
    );
  }
}
