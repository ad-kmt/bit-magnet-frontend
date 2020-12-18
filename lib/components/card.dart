import 'package:bit_magnet/models/solution.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  // arguments to be accepted by this widget
  final ISolution solution;
  CardWidget(this.solution);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  // responsible for toggle
  bool idLiked = false;
  bool idBookMarked = false;
  bool showData = false;
  bool _showComments = false;
  int likeCount = 23;
  int commentCount = 10;
  List<String> comments = [
    'I found this very helpful, the approach of the solution is from the very basic fundamentals and the outcome is very efficient',
    'It is very pleasure to see such great work done by our grads, Good Luck!',
    'Thank you so much I am looking for this'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.0),
          // list card containing country name
          GestureDetector(
            // onTap: (){
            //   setState(() => _showData = !_showData);
            // },
              child: Column(children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      boxShadow: [kBoxShadowGrey],
                    ),
                    child: Column(children: [

                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Walletiers",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400)),
                              ])),
                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Installation and Usage:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18)),
                                Text(widget.solution.solutioDetail),
                              ])),
                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Technology Used:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18)),
                                Text(widget.solution.accomplishment),
                              ])),
                      Container(
                        // decoration: BoxDecoration(
                        //     boxShadow: [
                        //       BoxShadow(color: Colors.grey, offset: Offset(0.0, 1.0))
                        //     ]),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),

                          child: Row(

                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  // decoration: const BoxDecoration(color: Colors.white),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        new GestureDetector(
                                          // SizedBox()
                                          child: Container(
                                              width: 40.0,
                                              height: 30.0,
                                              child: idLiked
                                                  ? Icon(
                                                Icons.favorite,
                                                size: 34,
                                              )
                                                  : Icon(
                                                Icons.favorite_outline,
                                                color: Colors.pink,
                                                size: 34,
                                              )),
                                          onTap: () {
                                            setState(() => idLiked = !idLiked);
                                          },
                                        ),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                            child: Text(
                                                idLiked
                                                    ? (widget.solution.upvotes + 1)
                                                    .toString()
                                                    : widget.solution.upvotes.toString(),
                                                style: TextStyle(fontSize: 18))),
                                        new GestureDetector(
                                          // SizedBox()
                                          child: Container(
                                              width: 40.0,
                                              height: 30.0,
                                              child: Icon(
                                                Icons.comment,
                                                size: 34,
                                              )),
                                          onTap: () {
                                            print("comment cliked");
                                            setState(
                                                    () => _showComments = !_showComments);
                                          },
                                        ),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                            child: Text('3',
                                                style: TextStyle(fontSize: 18))),
                                        new GestureDetector(
                                          // SizedBox()
                                          child: Container(
                                              width: 40.0,
                                              height: 30.0,
                                              child: Icon(
                                                Icons.share,
                                                size: 34,
                                              )),
                                          onTap: () {
                                            print("share cliked");
                                          },
                                        ),
                                      ]),
                                ),
                                flex: 3,
                              ),
                              Expanded(
                                child: Container(
                                  // decoration: const BoxDecoration(color: Colors.white),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new GestureDetector(
                                          // SizedBox()
                                          child: Container(
                                              width: 40.0,
                                              height: 30.0,
                                              child: idBookMarked
                                                  ? Icon(
                                                Icons.bookmark,
                                                size: 34,
                                              )
                                                  : Icon(
                                                Icons.bookmark_outline,
                                                size: 34,
                                              )),
                                          onTap: () {
                                            setState(() => idBookMarked = !idBookMarked);
                                          },
                                        ),
                                      ]),
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      )

                    ])),

              ])),

          // this is the company card which is toggling based upon the bool
          _showComments
              ? Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Amardeep Saini:- ",
                              style:
                              TextStyle(fontWeight: FontWeight.bold)),
                          Text(comments[0]),
                        ])),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Aditya Kumawat:- ",
                              style:
                              TextStyle(fontWeight: FontWeight.bold)),
                          Text(comments[1]),
                        ])),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Smita Meshram:- ",
                              style:
                              TextStyle(fontWeight: FontWeight.bold)),
                          Text(comments[2]),
                        ])),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration:
                          const BoxDecoration(color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Comment here...'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        flex: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration:
                          const BoxDecoration(color: Colors.white),
                          child: new GestureDetector(
                            // SizedBox()
                            child: Container(
                                width: 40.0,
                                height: 30.0,
                                child: new Tab(
                                    icon: new Image.asset(
                                        "images/send.png"))),
                            onTap: () {
                              print("share cliked");
                            },
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ]

            //     children: ['I found this very helpful, the approach of the solution is from the very basic fundamentals and the outcome is very efficient','It is very pleasure to see such great work done by our grads, Good Luck!','Thank you so much I am looking for this'].map((e){
            //       // make changes in the UI here for your company card
            //       return Card(child: Text(e));
            //     }).toList()
          )
              : SizedBox() // else blank
        ]);
  }
}
