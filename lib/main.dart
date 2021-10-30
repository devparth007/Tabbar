import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabs = [
      Tab(
        icon: Icon(Icons.chat),
        text: "CHATS",
      ),
      Tab(
        icon: Icon(Icons.add_circle),
        text: "STATUS",
      ),
      Tab(
        icon: Icon(Icons.call),
        text: "CALL LOG",
      ),
    ];
    var tabPages = [
      Center(
        child: Icon(Icons.chat, size: 60.0),
      ),
      Center(
        child: Icon(Icons.add_circle, size: 60.0),
      ),
      Center(
        child: Icon(Icons.call, size: 60.0),
      ),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tower"),
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: tabPages,
        ),
      ),
    );
  }
}
