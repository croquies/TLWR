import 'package:flutter/material.dart';
import 'package:tlwr_graph_viz/data_models/node.dart';
import 'package:tlwr_graph_viz/tlwr_graph_viz.dart';
import 'package:kt_dart/collection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  KtList<Node> nodes = emptyList();
  KtList<DynamicEvent> dynamicEvents = emptyList();

  @override
  void initState() {
    nodes = KtList.from([
      const Node(
        label: "Home Page",
        path: "/",
        id: 'node1',
        frequency: 5,
        duration: 3.5,
      ),
      const Node(
        label: "Login Page",
        path: "/login",
        id: 'node2',
        frequency: 4,
        duration: 1.2,
      ),
      const Node(
        label: "Registration Page",
        path: "/registration",
        id: 'node3',
        frequency: 3,
        duration: 4.5,
      ),
    ]);

    dynamicEvents = KtList.from([
      DynamicEvent(
        id: "edge1",
        from: "node1",
        to: "node2",
        createdAt:
            DateTime.fromMillisecondsSinceEpoch(100000).toIso8601String(),
      ),
      DynamicEvent(
          id: "edge1",
          from: "node1",
          to: "node2",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100001).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node3",
          to: "node2",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100002).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node1",
          to: "node2",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100003).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node1",
          to: "node3",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100004).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node1",
          to: "node3",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100005).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node2",
          to: "node2",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100006).toIso8601String()),
      DynamicEvent(
          id: "edge1",
          from: "node1",
          to: "node2",
          createdAt:
              DateTime.fromMillisecondsSinceEpoch(100007).toIso8601String()),
    ]);
    super.initState();
  }

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
      body: TLWRGraphWidget(
        dynamicEvents: dynamicEvents,
        nodes: nodes,
      ),
    );
  }
}
