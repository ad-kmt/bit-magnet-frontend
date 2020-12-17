import 'dart:async';

import 'package:bit_magnet/components/caraousel_dots.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCarousel extends StatefulWidget {
  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentPage < listCaraousel.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onPageChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: onPageChange,
              itemCount: listCaraousel.length,
              itemBuilder: (context, index) {
                return listCaraousel[index];
              }),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < listCaraousel.length; i++)
                      if (i == currentPage)
                        CaraouselDots(true)
                      else
                        CaraouselDots(false)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

var listCaraousel = [
  Container(
    decoration: BoxDecoration(
      gradient: kGradientBlue,
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset("images/working.svg"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "aXess Event",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      gradient: kGradientGreen,
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset("images/presenting.svg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "aXess Event",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      gradient: kGradientPurpleCream,
    ),
    child: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
              image: AssetImage("images/making.png"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "aXess Event",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    ),
  ),
];
