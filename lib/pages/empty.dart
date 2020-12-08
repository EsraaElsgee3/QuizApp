import 'package:flutter/material.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/pages/quiz_page.dart';


class empty extends StatefulWidget {


  final List <QuizModel> quizList;
  const empty({Key key, this.quizList}) : super(key: key);
  @override
  _emptyState createState() => _emptyState();
}

class _emptyState extends State<empty> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor:Colors.lightBlueAccent,
          title: Text('Online Exam'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
      body:Center(child:Container(
        width: 220,
        child:  FlatButton(
          child: Text("start quiz"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.lightBlueAccent,
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => QuizPage(
                  quizList: widget.quizList,
                )));
          },
        ),
      )),

    );
  }
}
