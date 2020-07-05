import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return itemView();
  }

  Widget itemView() {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[Text("test", style: TextStyle(color: Colors.red))],
      ),
    );
  }
}
