import 'package:flutter/material.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String appKey;
    String accessKey;
    appKey = "INSERT_ANDROID_APP_KEY";
    accessKey = "INSERT_ANDROID_ACCESS_KEY";
    ZohoSalesIQ.init(appKey, accessKey).then((_) {
      // initialization successful
      ZohoSalesIQ.showLauncher(true); // Invoking showLauncher is optional.
    }).catchError((error) {
      // initialization failed
      print(error);
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ZohoChat(
          zohoWidgetCode: "xxxxx", //zoho salesiq chat widget code
          chatPreloaderSize: 100.0, //preloader size
          chatPreloaderWidth: 3, //preloader border size
          chatPreloaderColorHexString: "#2196f3", //preloader color code
          showMinimizeChatWidget:
              true, //either to show or hide the minimize widget
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons
              .add)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
