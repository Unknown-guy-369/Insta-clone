import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {print("Clicked")},
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 70,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/profile_img.png'),
              ),
              shape: BoxShape.circle,
              // border: Border.all(
              //     width: 4,
              //     color: Colors.red,
              //     strokeAlign: BorderSide.strokeAlignOutside),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const Stack(
              children: [
                Positioned(
                  right: 1,
                  bottom: 8,
                    child: SizedBox(
                      child: Icon(
                        Icons.add_circle,
                        color: Color.fromARGB(255, 69, 167, 248),
                      ),
                    ))
              ],
            ),
          ),
        ]));
  }
}
