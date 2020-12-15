import 'package:bit_magnet/data/front_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import '../../components/app_bar.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AxessAppBar(),
        body:BottomSheet(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
              SizedBox(
                height: 12,
              ),
              Text(desc, textAlign: TextAlign.center, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),),
            ]),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('images/sunrise.jpg'),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Home(),
        RaisedButton(
          color: Colors.green,
          onPressed: (){},
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(width: 5,),
              Icon(Icons.login)
            ],
          ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: DraggableScrollableSheet(builder: (context, controller) {
            return Container(
              child: ListView.builder(
                  itemCount: 1,
                  controller: controller,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(children: [
                            ListTile(
                              leading: Icon(Icons.arrow_drop_down_circle),
                              title: const Text(
                                  'aXess prepares us for Open Banking'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Learn how we are investing in our capabilities and community to build our Open Banking future.',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ]),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(children: [
                            ListTile(
                              leading: Icon(Icons.arrow_drop_down_circle),
                              title: const Text(
                                  'Imagine what we could do together'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Let's build the future of banking together to address our client needs across Asia, Africa, and the Middle East.",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    );
                  }),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
            );
          }),
        ),
      ],
    );
  }
}
