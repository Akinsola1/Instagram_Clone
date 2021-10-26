import 'package:flutter/material.dart';

class favouritePost extends StatefulWidget {
  const favouritePost({ Key? key }) : super(key: key);

  @override
  _favouritePostState createState() => _favouritePostState();
}

class _favouritePostState extends State<favouritePost> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favourite post', style: TextStyle(color: Colors.black,),)
    );
  }
}