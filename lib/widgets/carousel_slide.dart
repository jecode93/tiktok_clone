import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key}) : super(key: key);

  final List<Map> titkokItem = [
    {
      'title': "1",
      'color': Colors.blue,
    },
    {
      'title': "2",
      'color': Colors.greenAccent,
    },
    {
      'title': "3",
      'color': Colors.yellowAccent,
    }
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
              color: item['color'],
              child: Center(
                child: Text(
                  item['title'],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
