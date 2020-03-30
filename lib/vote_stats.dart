import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';

class VoteStats extends StatefulWidget {
  @override
  _VoteStatsState createState() => _VoteStatsState();
}

class _VoteStatsState extends State<VoteStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: const Text('Results'),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AppActionButton(),
      body: Column(
        children: <Widget>[
          Container(
            height: 380,
            width: double.infinity,
            child: Image(
              image: AssetImage("assets/image/votest2.png"),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
