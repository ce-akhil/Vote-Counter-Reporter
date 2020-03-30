import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';

class VoteCaster extends StatefulWidget {
  @override
  _VoteCasterState createState() => _VoteCasterState();
}

class _VoteCasterState extends State<VoteCaster> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: const Text('Cast your Vote'),
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
            child: Image(image: AssetImage("assets/image/camera.png"),
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'Please blink thrice before the camera',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.adjust),
                  title: Text('	Bahujan Samaj Party'),
                  subtitle: Text('Leader: Mamata Banerjee'),
                  trailing: RaisedButton(
                    child: Text('Vote'),
                    onPressed: () {},
                  ),
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
                  title: Text('Bharatiya Janata Party'),
                  subtitle: Text('Leader: Jagat Prakash Nadda'),
                  trailing: RaisedButton(
                    child: Text('Vote'),
                    onPressed: () {},
                  ),
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
                  title: Text('Communist Party of India'),
                  subtitle: Text('Leader: D. Raja'),
                  trailing: RaisedButton(
                    child: Text('Vote'),
                    onPressed: () {},
                  ),
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
                  title: Text('Indian National Congress'),
                  subtitle: Text('Leader:Sonia Gandhi'),
                  trailing: RaisedButton(
                    child: Text('Vote'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


