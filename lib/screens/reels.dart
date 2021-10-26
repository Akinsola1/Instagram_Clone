import 'package:flutter/material.dart';

class reels extends StatefulWidget {
  const reels({ Key? key }) : super(key: key);

  @override
  _reelsState createState() => _reelsState();
}

class _reelsState extends State<reels> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('reels page', style: TextStyle(color: Colors.black,),)
    );
  }
}