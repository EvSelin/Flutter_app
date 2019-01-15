import 'package:flutter/material.dart';
import 'fancy_tab_bar.dart';
import 'tab_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      appBar: AppBar(
        backgroundColor: PURPLE,
        title: Text('Lessons'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                SlideRightRoute(widget: SecondScreen()),
              );
            },
          )
        ],

      ),
      bottomNavigationBar: FancyTabBar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(61, 66, 86, 1),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.indigo,
            margin: new EdgeInsets.all(5.0),

            child: Row(
                children: <Widget>[
                  Icon(
                      Icons.cake
                  ),

                  Text(
                    'Introduction to Driving',
                  ),

                  Icon(
                      Icons.navigate_next
                  ),
                ],
              )
            ),
          ),
          Container(
            color: Color.fromRGBO(61, 66, 86, 1),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              height: 100.0,
              color: Colors.indigo,
              margin: new EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.cake
                    ),

                    Text(
                      'Introduction to Driving',
                    ),

                    Icon(
                        Icons.navigate_next
                    ),
                  ],
                )
            ),
          ),
          Container(
            color: Color.fromRGBO(61, 66, 86, 1),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              height: 100.0,
              color: Colors.indigo,
              margin: new EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.cake
                    ),

                    Text(
                      'Introduction to Driving',
                    ),

                    Icon(
                        Icons.navigate_next
                    ),
                  ],
                )
            ),
          ),
          Container(
            color: Color.fromRGBO(61, 66, 86, 1),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              height: 100.0,
              color: Colors.indigo,
              margin: new EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.cake
                    ),

                    Text(
                      'Introduction to Driving',
                    ),

                    Icon(
                        Icons.navigate_next
                    ),
                  ],
                )
            ),
          ),
          Container(
            color: Color.fromRGBO(61, 66, 86, 1),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              height: 100.0,
              color: Colors.indigo,
              margin: new EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.cake
                    ),

                    Text(
                      'Introduction to Driving',
                    ),

                    Icon(
                        Icons.navigate_next
                    ),
                  ],
                )
            ),
          ),
        ],
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Image.asset(
            'img/background.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'TAKE THIS LESSON',
                  style: TextStyle(
                    color: Colors.white,
                    background: Paint()
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }
  );
}