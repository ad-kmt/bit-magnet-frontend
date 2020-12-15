import 'package:bit_magnet/components/caraousel.dart';
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
        body: BottomSheet(),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Image(
          image: AssetImage('images/sunrise.jpg'),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Carousel(),
        RaisedButton(
          color: Colors.green,
          onPressed: () {},
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.login)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
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
