import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';
import 'package:vcr/contactus.dart';
import 'package:vcr/profile.dart';
import 'package:vcr/upcoming_elections.dart';

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
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
              child: Container(
                child: ResponsiveGridRow(
                  children: [
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 12,
                      child: SizedBox(
                        height: (isPortrait) ? 196 : 76,
                        child:
                        Image(image: AssetImage("assets/image/vote.png")),
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin * 2),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.voteYea),
                            onPressed: () {
                            },
                          ),
                          Text(
                            'Vote for',
                          ),
                          Text(
                            'General ',
                          ),
                          Text(
                            'Elections ',
                          )
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.chartArea),
                            onPressed: () {
                            },
                          ),
                          Text('State Based'),
                          Text('Elections'),
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.user),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Profile()));
                            },
                          ),
                          Text('Profile')
                        ],
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.calendar),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => UpcomingElections()));
                            },
                          ),
                          Text('Upcoming'),
                          Text(' Elections')

                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.chalkboardTeacher),
                            onPressed: () {
                            },
                          ),
                          Text('My Votes')
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.phone),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ContactUs()));
                            },
                          ),
                          Text('Contact Us'),
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                  ],
                ),
              )),
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