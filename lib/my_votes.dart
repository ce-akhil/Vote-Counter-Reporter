import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyVotes extends StatefulWidget {
  @override
  _MyVotesState createState() => _MyVotesState();
}

class _MyVotesState extends State<MyVotes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'My Votes',
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
                                  title: Text('General Election'),
                                  trailing: Text('Voted to:'),
                                  subtitle: Text('UID: 877436677366'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                ),
                                height: 50.0,
                                child: ListTile(
                                    title: Text('Vote Submitted at:'),
                                    subtitle: Text('03:23:25'),
                                    trailing: Text('25 March 2020')
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
                                          child: Text('See Results',
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
                                  title: Text('Mayor Elections'),
                                  trailing: Text('Voted to:'),
                                  subtitle: Text('ID: 787436677366'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                ),
                                height: 50.0,
                                child: ListTile(
                                    title: Text('Vote Submitted at:'),
                                    subtitle: Text('07:23:44'),
                                    trailing: Text('30 March 2020')
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
                                          child: Text('See Results',
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
              ],
            ),
          )
      ),
    );
  }
}
