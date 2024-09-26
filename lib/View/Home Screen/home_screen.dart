import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:external_packages_sample_sep26/dummy_db.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
            ),
            items: List.generate(
                DummyDb.trendingNowList.length,
                (index) => Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          Image.network(
                              fit: BoxFit.cover,
                              height: 400,
                              DummyDb.trendingNowList[index]["thumbnail"])
                        ],
                      ),
                    ))),
      ),
    );
  }
}
