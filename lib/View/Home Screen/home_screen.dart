import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:external_packages_sample_sep26/dummy_db.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          carouselController: _controller,
            options: CarouselOptions(
              
              height: 400,
              // aspectRatio: 9 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0,
              onPageChanged: (index, reason) {},
              scrollDirection: Axis.horizontal,
            ),
            items: DummyDb.trendingNowList
                .map(
                  (e) => InkWell(
                    onTap: () {
                      Share.share(e["title"]);
                    },
                    child: Container(
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          e["title"],
                          style: GoogleFonts.dancingScript(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                )
                .toList()),
      ),
      
    );
  }
}
