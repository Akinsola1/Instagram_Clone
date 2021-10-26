import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile', style: TextStyle(color: Colors.black,),)
    );
  }
}