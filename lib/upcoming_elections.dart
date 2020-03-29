import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpcomingElections extends StatefulWidget {
  @override
  _UpcomingElectionsState createState() => _UpcomingElectionsState();
}

class _UpcomingElectionsState extends State<UpcomingElections> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Coming Elections',
        ),
      ),
      body: SafeArea(
          child: Scrollbar(
            child: Column(
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
          )
      ),
    );
  }
}
