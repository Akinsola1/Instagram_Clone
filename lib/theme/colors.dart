import 'package:flutter/material.dart';

const appBarColor = Color(0xFF131313);
const appFooterColor = Color(0xFF131313);
const primary = Color(0xFF000000);
const white = Color(0xFFFFFFFF);
const black = Color(0xFF000000);
const textFieldBackground = Color(0xFF262626);
const buttonFollowColor = Color(0xFF0494F5);
const storyBorderColor = [Color(0xFF9B2282), Color(0xFFEEA863)];

final kInnerDecoration = BoxDecoration(
color: Colors.white,
border: Border.all(color: Colors.white),
borderRadius: BorderRadius.circular(32),
image: const DecorationImage(image: NetworkImage(""" 
"https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",

"""))
);
// border for all 3 colors
final kGradientBoxDecoration = BoxDecoration(
gradient: LinearGradient(
colors: [Colors.yellow.shade600, Colors.orange, Colors.red]),
border: Border.all(
color: Colors.amber, //kHintColor, so this should be changed?
),
borderRadius: BorderRadius.circular(32),
);