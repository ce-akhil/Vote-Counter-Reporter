import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';

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
          child: const Text('Vote Counter and Reporter'),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AppActionButton(),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.adjust),
                    title: Text('General Elections'),
                    subtitle: Text('UID: 877436677366'),
                    trailing: Text('Check Details')),
                ListTile(
                  leading: Text('Ongoing'),
                  trailing: Text('1 April 2020')
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Vote'),
                      onPressed: () {},
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
                    leading: Icon(Icons.adjust),
                    title: Text('Mayor Elections'),
                    trailing: Text('Check Details')),
                ListTile(
                  title: Text('City: Delhi'),
                  trailing: Text('Due date : 15 April 2020')
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(' Due'),
                      onPressed: () {},
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
                    leading: Icon(Icons.adjust),
                    title: Text('State Elections'),
                    trailing: Text('Check Details')),
                ListTile(
                    title: Text('State: Mumbai'),
                    trailing: Text('Done on: 20 March 2020')
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Check Results'),
                      onPressed: () {},
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
