import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData(

          brightness: Brightness.dark,
          fontFamily: 'Georgia',
        ),

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

            title: Center(


              child:Text('Info Page') ,
            )
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:EdgeInsets.only(bottom: 20),
                child:CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/merthan.JPG'),
                ),
              ),



              Divider(
                indent: 30,
                endIndent: 30,

              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left:30, top: 20),
                child: Text('Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),


                ),


              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left:30, top: 20, bottom: 20),
                child: Text('Merthan Özdemir',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'GreatVibes',
                    fontSize: 50,
                    color: Colors.orange,
                  ),


                ),


              ),
              Row(

                children: [
                  Container(
                    padding: EdgeInsets.only(left:30),
                    child: Icon(
                      Icons.phone,

                    ),


                  ),
                  Container(
                    padding: EdgeInsets.only(left:10),

                    child: Text('0536 911 67 82',
                    style: TextStyle(fontSize: 20),
                    ),

                  )

                ],

              ),
              Row(

                children: [
                  Container(
                    padding: EdgeInsets.only(left:30),
                    child: Icon(
                      Icons.mail,

                    ),


                  ),
                  Container(
                    padding: EdgeInsets.only(left:10),

                    child: Text('merthan.ozdemir@boun.edu.tr',
                      style: TextStyle(fontSize: 18),
                    ),

                  )

                ],

              ),




            ],
          ),


      ),
    );

  }
}
