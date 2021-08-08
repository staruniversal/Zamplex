import 'package:flutter/material.dart';

void main() => runApp(MyApp());
  
class MyApp extends StatelessWidget {
  _MyAppState createState() => MyAppState();
}
  
  class _MyAppState extends State<MyApp> {
   TabController controller;
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'zamplix',
      theme: ThemeData(
        brightness: Brightness.dark, 
        primaryColor: Colors.black, 
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4, 
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget> [
              Container(child: Text('home'),),
              Container(child: Text('search'),),
              Container(child: Text('save'),),
              Container(child: Text('more'),),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}    



   
        
        
