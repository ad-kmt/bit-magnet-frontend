import 'package:bit_magnet/data/front_page.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<SliderModel> slides = new List<SliderModel>();

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return
        //backgroundColor: Colors.blueGrey,
        PageView.builder(
            itemCount: slides.length,
            itemBuilder: (context, index) {
              return SliderTile(
                slides[index].getImageAssetPath(),
                slides[index].getTitle(),
                slides[index].getDesc(),
              );
            });
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath, title, desc;
  SliderTile(this.imageAssetPath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageAssetPath),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
    );
  }
}
