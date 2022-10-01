import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vcr/background_image.dart';
import 'package:vcr/voting_options.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  final double tileMargin = 30;

  final String title;

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or log in with'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1.5,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _warnUserAboutInvalidData() async {
      return await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Need help?'),
                content: const Text(
                    'If you are getting any issue while filling the form we are happy to help. Feel free to contact us.'),
                actions: <Widget>[
                  FlatButton(
                    child: Text(
                      'YES',
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'NO',
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                ],
              );
            },
          ) ??
          false;
    }

    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    return Stack(
      children: <Widget>[
        BackgroundImage(),
        Scaffold(
          drawerDragStartBehavior: DragStartBehavior.down,
          key: _scaffoldKey,
          appBar: AppBar(
            title: Center(
              child: Text(
                'UID Login',
              ),
            ),
          ),
          body: Form(
            key: _formKey,
            onWillPop: _warnUserAboutInvalidData,
            child: Scrollbar(
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.down,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ResponsiveGridRow(
                    children: [
                      if (isPortrait) _addGap(tileMargin*5),
                      ResponsiveGridCol(
                        xs: 12,
                        child: SizedBox(
                          height: (isPortrait) ? 108 : 64,
                          child:
                              Image(image: AssetImage("assets/image/vote.png")),
                        ),
                      ),
                      if (isPortrait) _addGap(tileMargin*3),
                      ResponsiveGridCol(
                          xs: 12,
                          child: Center(
                            child: Text('Login to Vote',
                                style: TextStyle(fontSize: 35)),
                          )),
                      if (isPortrait) _addGap(tileMargin * 5),
                      ResponsiveGridCol(
                          xs: 12,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your UID to login ',
                              border: const UnderlineInputBorder(),
                              filled: true,
                            ),
                            validator: (String value) {
                              if (value == null) {
                                return null;
                              }
                              if (value.isEmpty) {
                                return 'Please enter valid uid number';
                              }
                              final n = num.tryParse(value);
                              if (n == null) {
                                return '"$value" is not a valid uid number';
                              }
                              if (n < 4999999999) {
                                return '"$value" is not a valid phone number';
                              }
                              return null;
                            },
                            maxLines: 1,
                            maxLength: 12,
                          )),
                      ResponsiveGridCol(
                          xs: 12,
                          child: TextFormField(
                            decoration: new InputDecoration(
                              hintText:
                                  'Enter OTP',
                              border: const UnderlineInputBorder(),
                              filled: true,
                            ),
                          )),
                      ResponsiveGridCol(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Resend',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        child: ListTile(
                          title: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VotingOption()));
                            },
                            child: Text(
                              'Log in',
                            ),
                          ),
                        ),
                      ),
                      if (isPortrait) _addGap(tileMargin),
                      ResponsiveGridCol(
                        child: _divider(),
                      ),
                      if (isPortrait) _addGap(tileMargin),
                      ResponsiveGridCol(
                        xs: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                iconSize: 32,
                                icon: Icon(FontAwesomeIcons.idCard),
                                onPressed: () {}),
                            Text('Pan Card'),
                          ],
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 32,
                              icon: Icon(FontAwesomeIcons.solidAddressCard),
                              onPressed: () {},
                            ),
                            Text('Government '),
                            Text('Issued ID')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
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
