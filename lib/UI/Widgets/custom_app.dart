import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String mashy;
  CustomAppBar(this.mashy);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height / 10,
      width: width,
      padding: EdgeInsets.only(left: 10, top: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.black, Colors.pinkAccent[200]],
      ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(Icons.folder),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$mashy',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          )
        ],
      ),
    );
  }
}
