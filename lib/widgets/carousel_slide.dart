import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'video_widget.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key}) : super(key: key);

  final List<Map> titkokItem = [
    {
      'videos': "assets/videos/video_1.mp4",
    },
    {
      'videos': "assets/videos/video_2.mp4",
    },
    {
      'videos': "assets/videos/video_3.mp4",
    },
    {
      'videos': "assets/videos/video_4.mp4",
    },
    {
      'videos': "assets/videos/video_5.mp4",
    },
    {
      'videos': "assets/videos/video_6.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: titkokItem.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  VideoWidget(
                    videoUrl: item['videos'],
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
