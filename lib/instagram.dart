import 'package:flutter/material.dart';
import 'package:instagram/pages/Home_pages/home_page.dart';

// ignore: must_be_immutable
class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  var displayScreen = const HomePage();

  var index = 0;

  final List<Widget> screens = const [
    HomePage(),
    Text("search"),
    Text("camera"),
    Text("reel"),
    Text("profilw")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxScrolled) => [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  backgroundColor: Colors.white,
                  title: Image.asset(
                    "assets/images/insta_logo.png",
                    height: 128,
                    width: 128,
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.messenger_outline_rounded)),
                  ],
                )
              ],
              body: screens[index],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor:Colors.black ,
              showSelectedLabels: false,
              onTap: (indexItem) => {
                setState(() {
                  index = indexItem;
                })
              },
              currentIndex: index,
              backgroundColor: const Color.fromARGB(255, 131, 48, 48),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black,

                    ),
                    label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.search,
                      color: Colors.black,
                    ), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined ,color: Colors.black,), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.movie_creation_outlined,
                      color: Colors.black,
                    ), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.circle_outlined,
                      color: Colors.black,
                    ),
                    label: ""),
              ],
            )));
  }
}
