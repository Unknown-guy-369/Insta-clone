import 'package:flutter/material.dart';
import 'package:instagram/pages/Home_pages/home_page_widget/posts.dart';
import 'package:instagram/pages/Home_pages/home_page_widget/story_list.dart';
import 'package:instagram/pages/Home_pages/home_page_widget/user_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children:[ Container(
        height:105,
        color:const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:const [
            UserStory(),
            StoryList(userName: "Add Story", profileImage: "assets/images/profile_img.png"),
                        StoryList(
                userName: "Add Story",
                profileImage: "assets/images/profile_img.png"),

            StoryList(
                userName: "Add Story",
                profileImage: "assets/images/profile_img.png"),
            StoryList(
                userName: "Add Story",
                profileImage: "assets/images/profile_img.png"),

            StoryList(
                userName: "Add Story",
                profileImage: "assets/images/profile_img.png"),
            StoryList(
                userName: "Add Story",
                profileImage: "assets/images/profile_img.png"),

          ],
        ),
      ),
     Posts(images: "assets/images/img_1.jpg",),
     Posts(images: "assets/images/img_2.jpg"),
     Posts(images: "assets/images/img_4.jpg"),
     Posts(images: "assets/images/img_3.jpg"),
     Posts(images: "assets/images/img_2.jpg"),
     Posts(images: "assets/images/img_1.jpg"),
     Posts(images: "assets/images/img_3.jpg"),
     Posts(images: "assets/images/img_4.jpg"),
     Posts(images: "assets/images/img_1.jpg"),
     Posts(images: "assets/images/img_2.jpg"),
     Posts(images: "assets/images/img_3.jpg"),
      
      ]
    );
  }
}