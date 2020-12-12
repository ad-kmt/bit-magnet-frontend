import "package:flutter/material.dart";

class ListTest extends StatefulWidget {
  @override
  _ListTestState createState() => new _ListTestState();
}

class _ListTestState extends State<ListTest> {
  int leader;
  List<Text> team = [
    Text('Amardeep Saini (1626143)'),
    Text('Aditya Kumawat (1626888)'),
    Text('Varun Bhandia (1626999)')
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List"),
      ),
      body: new ListView(
          children: new List.generate(team.length, (int index) {
        return new ListTile(
          title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                team[index],
                Radio(
                  value: index,
                  groupValue: leader,
                  onChanged: (val) {
                    setState(() {
                      leader = index;
                    });
                  },
                ),
              ]),
          onTap: () {
            setState(() {
              leader = index;
            });
          },
        );
      })),
    );
  }
}
