import 'package:flutter/material.dart';
import 'package:hlenglish/view/ui/home/pageThree/PageThree.dart';
import 'package:hlenglish/view/ui/home/pageone/pageone.dart';
import 'package:hlenglish/view/ui/home/pagetwo/pagetwo.dart';


class TabLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
                  child: PlayoutExample(),
              ),
              new Container(color: Colors.orange,
              child: PageTwo(),),
              new Container(
                color: Colors.lightGreen,
                child: GetChuckCategories(),
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
              Tab(icon: new Icon(Icons.settings),)
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}