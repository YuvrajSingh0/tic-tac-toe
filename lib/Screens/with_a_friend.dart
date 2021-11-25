import 'package:flutter/material.dart';

class WithAFriend extends StatefulWidget {
  static String id = 'with_a_friend';
  @override
  _WithAFriendState createState() => _WithAFriendState();
}

class _WithAFriendState extends State<WithAFriend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Ayush Hutiya Hai',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
