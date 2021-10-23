import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myinstagram_clone/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const home_page(),
    );
  }
}

