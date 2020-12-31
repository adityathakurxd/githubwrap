import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'GitHub Wrapped',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          Text(
            '2021',
            style: TextStyle(color: Colors.white, fontSize: 60.0),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    gapPadding: 20.0),
                hintText: 'Enter GitHub Username',
                //   errorText: ' Oops, something is not right!',
                //   errorStyle:
                //       TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
          ),
        ],
      ),
    );
  }
}
