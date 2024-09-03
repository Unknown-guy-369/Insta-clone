import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  const StoryList(
      {required this.userName, required this.profileImage, super.key});
  final String userName;
  final String profileImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {print("Clicked")},
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(profileImage),
              ),
              shape: BoxShape.circle,
              border: Border.all(
                  width: 4,
                  color: Colors.red,
                  strokeAlign: BorderSide.strokeAlignOutside),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Container(
              width: 80,
              padding:const EdgeInsets.only(left: 5),
              child: Text(
                userName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontSize: 13),
              ))
        ]));
  }
}
