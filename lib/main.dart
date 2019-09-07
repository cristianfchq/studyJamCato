import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget textoPrincipal(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget componenteUno(String name) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.gps_fixed,
          color: Color(0xFF388E3C),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  Widget componenteDos(String name) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.gps_fixed,
          color: Colors.black45,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mi primera applicacion",
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  //width: 200.0,
                  height: 60.0,
                  color: Color(0xFF388E3C),
                  //color: Colors.lightGreen,
                  //magen
                  //margin: EdgeInsets.only(top: 50.0,left: 35.0),
                  //margin: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //scrollDirection: Axis.horizontal,

                    children: <Widget>[
                      textoPrincipal("uno"),
                      textoPrincipal("dos"),
                      textoPrincipal("tres"),
                      textoPrincipal("cuatro"),
                      textoPrincipal("cinco"),
                      textoPrincipal("seis"),
                    ],
                  ),
                ),
                Container(
                  //height: 60.0,
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //scrollDirection: Axis.horizontal,

                    children: <Widget>[
                      componenteUno("uno"),
                      componenteDos("dos"),
                      componenteDos("tres"),
                      componenteDos("cuatro"),
                      componenteDos("cinco"),
                      componenteDos("seis"),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/50F.jpg'),
                ),
                Image(
                  image: NetworkImage('https://www.dzoom.org.es/wp-content/uploads/2017/07/seebensee-2384369-810x540.jpg'),
                ),
                //
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                ),
                Container(
                  width: 200.0,
                  height: 100.0,
                  color: Colors.red,
                  //magen
                  margin: EdgeInsets.only(top: 50.0),
                  //margin: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text("Hola mundo"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.green,
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

        //Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        //  children: <Widget>[
        //    Text("uno"),
        //    Text("dos"),
        //    Text("tres"),
        // ],
        //),
      ), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
