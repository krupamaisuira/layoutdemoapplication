import 'package:flutter/material.dart';
// this is my first commit from the cloud server

//added comment from the cloud server 
// creating layout

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Container(
    //    decoration: BoxDecoration(color:Colors.white),
    //   child: Center(
    //     child : Text(
    //       'Hello Montreal',
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(
    //         fontSize: 32,
    //         color: Colors.blueAccent,
    //         fontWeight: FontWeight.bold
    //
    //       ),
    //     )
    //
    //   ),
    //
    // );

    const textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 12,
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.orange[500]),
        Icon(Icons.star, color: Colors.orange[500]),
        Icon(Icons.star, color: Colors.orange[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black)
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text('79 reviews', textDirection: TextDirection.ltr, style: textStyle)
        ],
      ),
    );

    final iconList = DefaultTextStyle(
        style: textStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  Text('Prep'),
                  Text('25 min')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  Text('Cook'),
                  Text('1 hr')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  Text('Feeds'),
                  Text('4-6')
                ],
              )
            ],
          ),
        ));
    final leftColumn = Container(
      child: Column(children: [
        Text('Strawberry Pavlora'),
        Text(' Description'),
        ratings,
        iconList
      ]),
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    );

    return MaterialApp(
        title: 'Demo page',
        home: Scaffold(
            appBar: AppBar(title: Text('Layout Demo')),
            body: Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                    height: 600,
                    child: Card(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          SizedBox(width: 200, child: leftColumn),
                              SizedBox(width: 100, child:  Image.asset('assets/dog.jpg')),

                        ]))))

            // body: Column(children: <Widget>[
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: Image.asset('assets/dog.jpg'),
            //       ),
            //       Expanded(
            //         flex: 2,
            //         child: Image.asset('assets/dog.jpg'),
            //       ),
            //       Expanded(
            //         child: Image.asset('assets/dog.jpg'),
            //       ),
            //     ],
            //   ),
            //   ratings,
            //   iconList,
            // ]),
            ));
  }
}
