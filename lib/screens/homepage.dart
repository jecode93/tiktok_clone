import 'package:flutter/material.dart';
import 'package:tiktok_clone/widgets/bottomNavigationBar.dart';
import 'package:tiktok_clone/widgets/carousel_slide.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Carousel(),
      bottomNavigationBar: const BottomNavBar(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
