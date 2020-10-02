import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';
import 'package:vcr/responsive.dart';
import 'package:vcr/upcoming_elections.dart';
import 'package:vcr/vote_caster.dart';
import 'package:vcr/vote_stats.dart';

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
      body: Responsive(
        desktop: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Live Elections',
                            style: Theme.of(context).textTheme.headline5,
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
                              title: Text('General Elections'),
                              subtitle: Text('UID: 877436677366'),
                              trailing: Text('Check Details')),
                          ListTile(
                              leading: Text('Ongoing'),
                              trailing: Text('1 April 2020')),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Vote'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VoteCaster()));
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
                              leading: Icon(Icons.adjust),
                              title: Text('Mayor Elections'),
                              trailing: Text('Check Details')),
                          ListTile(
                              title: Text('City: Delhi'),
                              trailing: Text('Due date : 15 April 2020')),
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
                              trailing: Text('Done on: 20 March 2020')),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Check Results'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VoteStats()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upcoming Elections',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(
                              width: 3.0,
                            ),
                          ),
                          height: 220.0,
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                          leading: Icon(FontAwesomeIcons.hashtag),
                                          title: Text('Upcoming Election'),
                                          trailing: Text('General Election'),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                            leading: Icon(FontAwesomeIcons.searchLocation),
                                            title: Text('Location'),
                                            trailing: Text('1 April 2020')
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RaisedButton(
                                                  child: Text('Know More',
                                                    style: TextStyle(
                                                      color: Color(0xFF512DA8),
                                                    ),),
                                                  onPressed: null
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(
                              width: 3.0,
                            ),
                          ),
                          height: 220.0,
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                          leading: Icon(FontAwesomeIcons.hashtag),
                                          title: Text('Upcoming Election'),
                                          trailing: Text('Legislative Elections'),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                            leading: Icon(FontAwesomeIcons.searchLocation),
                                            title: Text('Location'),
                                            trailing: Text('5 April 2020')
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[

                                          Container(
                                            decoration: BoxDecoration(
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RaisedButton(
                                                  child: Text('Know More',
                                                    style: TextStyle(
                                                      color: Color(0xFF512DA8),
                                                    ),),
                                                  onPressed: null
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(
                              width: 3.0,
                            ),
                          ),
                          height: 220.0,
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                          leading: Icon(FontAwesomeIcons.hashtag),
                                          title: Text('Upcoming Election'),
                                          trailing: Text('Delhi Elections'),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                        ),
                                        height: 50.0,
                                        child: ListTile(
                                            leading: Icon(FontAwesomeIcons.searchLocation),
                                            title: Text('Location'),
                                            trailing: Text('10 April 2020')
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RaisedButton(
                                                  child: Text('Know More',
                                                    style: TextStyle(
                                                      color: Color(0xFF512DA8),
                                                    ),),
                                                  onPressed: null
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        mobile: Column(
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
                      leading: Text('Ongoing'), trailing: Text('1 April 2020')),
                  ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Vote'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VoteCaster()));
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
                      leading: Icon(Icons.adjust),
                      title: Text('Mayor Elections'),
                      trailing: Text('Check Details')),
                  ListTile(
                      title: Text('City: Delhi'),
                      trailing: Text('Due date : 15 April 2020')),
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
                      trailing: Text('Done on: 20 March 2020')),
                  ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Check Results'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VoteStats()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
