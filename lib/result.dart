import 'dart:html';

import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final userData;
  ResultPage(this.userData);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String name;
  int followers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.userData);
  }

  void updateUI(dynamic userData) {
    setState(() {
      name = userData['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('$name'),
    );
  }
}
