import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  Widget buildList() {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return FutureBuilder(
        future: null,
        builder: (BuildContext context, snapshot) {
          return Container(

          );
        },
      );
    });
  }

  Widget itemListView(){
    return Container(
      child: Row(
        children: <Widget>[

        ],
      ),

    );
  }




}
