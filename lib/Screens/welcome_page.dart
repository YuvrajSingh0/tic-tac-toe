import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/single_player.dart';
import 'package:tic_tac_toe/Screens/with_a_friend.dart';
import 'package:tic_tac_toe/theme/theme.dart';
import 'package:tic_tac_toe/Constants/const.dart';
import 'package:tic_tac_toe/Components/logo.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.65],
            colors: [
              MyTheme.orange,
              MyTheme.red,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Center(
                child: Text(
                  'Tic Tac',
                  style: kTextStyle,
                ),
              ),
            ),
            Center(child: Logo()),
            SizedBox(
              height: 150.0,
            ),
            RoundBtn(
              colour: Colors.white,
              title: "SINGLE PLAYER",
              onPressed: () {
                Navigator.pushNamed(context, SinglePlayer.id);
              },
            ),
            RoundBtn(
              colour: Colors.white,
              title: "WITH A FRIEND",
              onPressed: () {
                Navigator.pushNamed(context, WithAFriend.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}