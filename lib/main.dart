import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'register_web_webview_stub.dart'
    if (dart.library.html) 'register_web_webview.dart';

void main() {
  registerWebViewWebImplementation();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'Flutter Web View',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}): super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View"),
      ),
      body: const WebView(
        initialUrl: 'https://forms.zohopublic.com/checkpoint/form/Avaliaodependnciasdocurso/formperma/H0gPoUk0MMGTHtELOnBIuBDti5hiupMkZeGo7JLAIOA',
        )
       );
  }
}
