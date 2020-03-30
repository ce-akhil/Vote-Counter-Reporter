import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';
import 'package:vcr/contactus.dart';
import 'package:vcr/profile.dart';
import 'package:vcr/upcoming_elections.dart';
import 'package:vcr/my_votes.dart';

class VotingOption extends StatefulWidget {
  @override
  _VotingOptionState createState() => _VotingOptionState();
}

class _VotingOptionState extends State<VotingOption> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    double tileMargin = 30;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: const Text('Vote Counter and Reporter'
              ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  AppActionButton(),
      body: Column(
        children: <Widget>[
          Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.check_box_outline_blank),
            title: Text('S.no.: 9475y38'),
            subtitle:Text('S.no.: 9475y38'),
            trailing: Text('S.no.: 9475y38')
          ),
          ListTile(
            trailing: FlatButton.icon(
          onPressed: null,
          icon: Icon(Icons.pin_drop),
          label: Text('S.no.: 9475y38')
            ),),
            ButtonBar(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {

              },
            ),
            OutlineButton(
              child: const Text('Reject'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Reason for Rejection'),
                      content: TextField(
                        decoration: InputDecoration(
                            hintText: "Reason for Rejection"),
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Submit'),
                          onPressed: () {},
                        )
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Icon(Icons.camera_alt),
              onPressed: () {

              },
            ),
          ],
            ),
        ],
      ),
    ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text('S.no.: 9475y38'),
                    subtitle:Text('S.no.: 9475y38'),
                    trailing: Text('S.no.: 9475y38')
                ),
                ListTile(
                  trailing: FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.pin_drop),
                      label: Text('S.no.: 9475y38')
                  ),),
            ButtonBar(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {

              },
            ),
            OutlineButton(
              child: const Text('Reject'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Reason for Rejection'),
                      content: TextField(
                        decoration: InputDecoration(
                            hintText: "Reason for Rejection"),
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Submit'),
                          onPressed: () {},
                        )
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Icon(Icons.camera_alt),
              onPressed: () {

              },
            ),
          ],
            ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text('S.no.: 9475y38'),
                    subtitle:Text('S.no.: 9475y38'),
                    trailing: Text('S.no.: 9475y38')
                ),
                ListTile(
                  trailing: RaisedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.pin_drop),
                      label: Text('S.no.: 9475y38')
                  ),),
            ButtonBar(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {

              },
            ),
            OutlineButton(
              child: const Text('Reject'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Reason for Rejection'),
                      content: TextField(
                        decoration: InputDecoration(
                            hintText: "Reason for Rejection"),
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Submit'),
                          onPressed: () {},
                        )
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Icon(Icons.camera_alt),
              onPressed: () {

              },
            ),
          ],
            ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

ResponsiveGridCol _addGap(double tileMargin) {
  return ResponsiveGridCol(
    child: SizedBox(
      height: tileMargin,
    ),
  );
}