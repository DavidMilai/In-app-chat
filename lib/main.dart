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
    appKey =
        "YbqnPkWjR8Rl%2F8AdTILrue28nwMzFDHysRD64PiK2SDeh3%2F0hvSx8CyTm%2BwHDCPz";
    accessKey =
        "ykaIjyBUW5jJc5KLyG6wVCHA7FXAzzIaHcPVPCMKWMZIwI4usf5bMdNIWbSCFaiwctLnIsoqSfI4i92dnDoTX71hFFuI0s9wJft6m0u8p4TwumhTTZa2qa4NwUUZI%2BalmUePK7l8BuBq44IT3P%2FU64wNVomDHwUJ8hm%2BM5aVQiA%3D";
    ZohoSalesIQ.init(appKey, accessKey).then((_) {
      ZohoSalesIQ.showLauncher(true);
    }).catchError((error) {
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
        child: Text("hello"),
        // child: ZohoChat(
        //   zohoWidgetCode: "xxxxx", //zoho salesiq chat widget code
        //   chatPreloaderSize: 100.0, //preloader size
        //   chatPreloaderWidth: 3, //preloader border size
        //   chatPreloaderColorHexString: "#2196f3", //preloader color code
        //   showMinimizeChatWidget:
        //       true, //either to show or hide the minimize widget
        // ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons
              .add)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
