import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myinstagram_clone/constant/search.dart';
import 'package:myinstagram_clone/theme/colors.dart';

class search extends StatefulWidget {
  const search({ Key? key }) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
                const SizedBox( height: 15),
                Container(
                  width:  size.width-30,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200,
                  ),
                  child: TextField(
                    style: TextStyle(color: white.withOpacity(0.3)),
                    cursorColor: white.withOpacity(0.3),
                    decoration:const  InputDecoration(
                      border: InputBorder.none,
                      hintText: '  search...',
                      prefixStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(LineIcons.search, color: Colors.black,)
                    ),
                  ),
                ),
              SizedBox(height: 10,),
                SingleChildScrollView(
                  child: Wrap(
                    spacing: 1,
                    runSpacing: 1,
                    children: List.generate(searchImages.length, (index) {
                      return  Container(
                      width:  (size.width -3)/3,
                      height: (size.width -3)/3,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(searchImages[index]), fit: BoxFit.cover)
                      ),
                    );
                    }),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}