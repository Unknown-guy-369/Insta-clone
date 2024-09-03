import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Posts extends StatelessWidget {
   Posts({required this.images, Key? key}) : super(key: key);
  final String images;

  @override
  Widget build(BuildContext context) {
    var likes = 0;
    var liked = false;

    var bookMArkIcon = const Icon(Icons.bookmark_border_outlined);

    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 650,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          //Display post image and name who posted
          Container(
              height: 500,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(fit: BoxFit.cover, image: AssetImage(images))),
              //Diplay Profile and name of posts owner
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile_img.png")),
                    const Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 6, top: 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abishek Priyan',
                                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                              )
                            ],
                          )),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert,color: Colors.white
                        ,))
                  ],
                ),
              )),

          //Diplay like , comment and share button
          SizedBox(
            child: Row(
              children: [
                IconButton(
                    //Like increse & Decrese action
                    onPressed: () {},
                    icon: LikeButton(
                      animationDuration: const Duration(milliseconds: 500),
                      likeCountAnimationDuration:
                          const Duration(milliseconds: 100),
                      likeCount: likes,
                      isLiked: liked,
                      circleColor: const CircleColor(
                          start: Colors.black, end: Colors.red),
                    )),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message_outlined)),

                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share_rounded)),

                //Bookmark
                const SizedBox(
                  width: 150,
                ),
                Expanded(
                    child: IconButton(onPressed: () {}, icon: bookMArkIcon))
              ],
            ),
          )
        ],
      ),
    );
  }
}
