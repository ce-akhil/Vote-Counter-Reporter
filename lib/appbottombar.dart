import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vcr/colorscheme.dart';
import 'package:vcr/contactus.dart';
import 'package:vcr/my_votes.dart';
import 'package:vcr/profile.dart';
import 'package:vcr/upcoming_elections.dart';
import 'package:vcr/voting_options.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key key}) : super(key: key);

  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bars),
            onPressed: () => showModalBottomSheet(
              backgroundColor: colorScheme.background.withOpacity(0.7),
              context: context,
              builder: (BuildContext context) => Container(
                alignment: Alignment.center,
                height: 560,
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: UserAccountsDrawerHeader(
                        onDetailsPressed: () {},
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/home/splash-background.jpg"),
                                fit: BoxFit.cover)),
                        currentAccountPicture: GestureDetector(
                          onTap: null,
                          child: CircleAvatar(
                            backgroundImage:
                                (AssetImage("assets/image/ak_face.jpg")),
                          ),
                        ),
                        accountName: Text('Akhil '),
                        accountEmail: Text('UID: 8845798798579847'),
                      ),
                    ),
                    ListTile(
                        title: Text('Genaral Elections'),
                        leading: IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => VotingOption()));
                            },
                            icon: Icon(FontAwesomeIcons.voteYea)),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VotingOption()));
                        }),
                    ListTile(
                      title: Text('Results'),
                      leading: IconButton(
                        icon: Icon(FontAwesomeIcons.chartArea),
                        onPressed: () {},
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Upcoming Elections'),
                      leading: IconButton(
                        icon: Icon(FontAwesomeIcons.calendar),
                        onPressed: null,
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      title: Text('My Votes'),
                      leading: IconButton(
                        icon: Icon(FontAwesomeIcons.chalkboardTeacher),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyVotes()));
                        },
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyVotes()));
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Contact us'),
                      leading: IconButton(
                        icon: Icon(FontAwesomeIcons.phone),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactUs()));
                        },
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()));
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Legal'),
                      leading: IconButton(
                        icon: Image(
                            image: AssetImage("assets/appdrawer/legal.png")),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.calendar),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpcomingElections()));
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.comment),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  bool checkNotification() {
    return true;
  }
}
