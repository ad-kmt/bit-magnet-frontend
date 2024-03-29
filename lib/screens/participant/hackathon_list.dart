import 'dart:convert';

import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';

import 'package:bit_magnet/screens/participant/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/config/base.dart';
import 'package:bit_magnet/styles/palette.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'hackathon_detail.dart';

class PHackathonList extends StatefulWidget {
  @override
  _PHackathonListState createState() => _PHackathonListState();
}

class _PHackathonListState extends State<PHackathonList> {
  List<dynamic> hackathons = [];

  Future<String> getHackathonList() async {
    //API CALL

    SharedPreferences preferences = await SharedPreferences.getInstance();

    String jwt = 'Bearer ' + preferences.getString("token");
    String url = baseIP + '/api/hackathon/get';
    http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': jwt,
      },
    );

    var responseData = jsonDecode(response.body);

    if (responseData["message"] == "success") {
      List<dynamic> x = responseData["data"];
      setState(() {
        hackathons = x;
      });
      return null;
    } else {
      return responseData["message"];
    }
  }

  @override
  void initState() {
    getHackathonList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hackathons",
              style: kBlueTitle,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(hackathons.length, (index) {
                return HackathonCard(
                    hackathons[index], PHackathonDetail(hackathons[index]));
              }),
            ),
          ],
        ),
      ),
      drawer: PSideBar(),
    );
  }
}
