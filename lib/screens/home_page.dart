import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myinstagram_clone/constant/story.dart';
import 'package:myinstagram_clone/theme/colors.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'logo',
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w400),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.add_rounded, color: Colors.black, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.facebookMessenger,
                  color: Colors.black, size: 30),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  LineIcons.heart,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const _buildstory(),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              _post(
                  size: size,
                  likes: 1000,
                  love: false,
                  OwnerComment: 'Good artist copy, Great artist steal',
                  postImage: 'assets/images/book3.jpeg',
                  PostNmae: 'Da vinci',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/69/3c/3e/693c3eebb8887c1c797fad51646db574.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 200,
                  love: true,
                  OwnerComment: """'Power and Responsibility'""",
                  postImage:
                      'assets/images/Spider Man Dark Minimalism IPhone Wallpaper - IPhone Wallpapers.jpeg',
                  PostNmae: 'Akinsola faruq',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/5a/f8/b5/5af8b535c3757c203f7311c63b092ffa.jpg',
                  totalComment: 150),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 15000,
                  love: true,
                  OwnerComment: 'RUN!!',
                  postImage: 'assets/images/book1.jpeg',
                  PostNmae: 'Power Mind',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/69/3c/3e/693c3eebb8887c1c797fad51646db574.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 2400,
                  love: false,
                  OwnerComment: 'Simplicity',
                  postImage: 'assets/images/book2.jpeg',
                  PostNmae: 'Akins01',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/d7/45/77/d745772f41788a7b4bb0bc32678a2bea.jpg',
                  totalComment: 300),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 3400,
                  love: true,
                  OwnerComment: 'City Enemy',
                  postImage: 'assets/images/book4.jpeg',
                  PostNmae: 'City Books',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/d3/bf/57/d3bf572f396812bbb6bde5e3a01b6c11.jpg',
                  totalComment: 100),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 1000,
                  love: false,
                  OwnerComment: 'Hardly working',
                  postImage: 'assets/images/story1.jpeg',
                  PostNmae: 'Mary Ann',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/d6/79/69/d67969599b8c037afbc8898838832b41.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 1000,
                  love: false,
                  OwnerComment: 'NY💙',
                  postImage: 'assets/images/photo1.jpeg',
                  PostNmae: 'ME++',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/8f/48/3b/8f483bd5811d331dda43802a3adb36af.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 1000,
                  love: false,
                  OwnerComment: 'Good artist copy, Great artist steal',
                  postImage: 'assets/images/book3.jpeg',
                  PostNmae: 'Da vinci',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/69/3c/3e/693c3eebb8887c1c797fad51646db574.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
              _post(
                  size: size,
                  likes: 1000,
                  love: false,
                  OwnerComment: 'Good artist copy, Great artist steal',
                  postImage: 'assets/images/book3.jpeg',
                  PostNmae: 'Da vinci',
                  PostOwnerImage:
                      'https://i.pinimg.com/236x/69/3c/3e/693c3eebb8887c1c797fad51646db574.jpg',
                  totalComment: 800),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

class _post extends StatefulWidget {
  String postImage;
  String PostNmae;
  String PostOwnerImage;
  String OwnerComment;
  int likes;
  bool love;
  int totalComment;
  _post({
    Key? key,
    required this.size,
    required this.PostOwnerImage,
    required this.PostNmae,
    required this.postImage,
    required this.love,
    required this.likes,
    required this.OwnerComment,
    required this.totalComment,
  }) : super(key: key);

  final Size size;

  @override
  State<_post> createState() => _postState();
}

class _postState extends State<_post> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              width: 49,
              height: 49,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: storyBorderColor)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                          image: NetworkImage("${widget.PostOwnerImage}"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '${widget.PostNmae}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  LineIcons.verticalEllipsis,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      GestureDetector(
        onDoubleTap: () {
          setState(() {
            widget.love = true;
          });
        },
        child: Container(
          height: 320,
          width: widget.size.width * .98,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('${widget.postImage}'), fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          IconButton(
              onPressed: () {
                setState(() {
                  widget.love = false;
                });
              },
              icon: Icon(
                LineIcons.heartAlt,
                size: 30,
                color: widget.love ? Colors.red : Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                LineIcons.comment,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.share,
                size: 30,
                color: Colors.black,
              )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.bookmark,
                size: 30,
                color: Colors.black,
              )),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${widget.likes} likes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                )),
            Row(
              children: [
                Text('${widget.PostNmae}: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                Text(widget.OwnerComment,
                    style: TextStyle(color: Colors.black, fontSize: 17)),
              ],
            ),
            Text('view all ${widget.totalComment} comments',
                style: const TextStyle(
                  color: Colors.grey,
                )),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: storyBorderColor)),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/avater3.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text('Add a comment ....',
                    style: TextStyle(color: Colors.grey)),
                Spacer(),
                Row(
                  children: [
                    Text('😂'),
                    Text('💕'),
                    Icon(
                      Icons.add_circle,
                      color: black.withOpacity(0.5),
                      size: 18,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}

class _buildstory extends StatefulWidget {
  const _buildstory({
    Key? key,
  }) : super(key: key);

  @override
  State<_buildstory> createState() => _buildstoryState();
}

class _buildstoryState extends State<_buildstory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(stories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: storyBorderColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: black,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(stories[index] ['img'], ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        stories[index] ['name'],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            })),
          )
        ],
      ),
    );
  }
}
