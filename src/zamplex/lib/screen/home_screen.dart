import 'package:flutter/material.dart';
import 'package:netflix_clone_test/model/model_movie.dart';

class Homescreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies =  [
    Movie.fromMap({
        'title': '사랑의 불시착',
        'keyword': '사랑/로맨스/판타지',
        'poster': 'test_movie_1.png'
        'like': false
      })
    ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TobBar extends StatelessWidget {
  @Override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: <Widget>[
        Image.asset(
          'images/zamplex_logo.png',
          fit: BoxFit.contain, 
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(right: 1), 
          child: Text(
            'TV프로그램',
            style: TextStyle(frontSize: 14),
        ),
        )
      Container(
          padding: EdgeInsets.only(right: 1), 
          child: Text(
            '영화',
            style: TextStyle(frontSize: 14),
        ),
        ),
      Container(
          padding: EdgeInsets.only(right: 1), 
          child: Text(
            '내가 찜한 콘텐츠',
            style: TextStyle(frontSize: 14),
        ),
        ),
      ],
    ), 
  ); 
 }
}