import 'package:flutter/material.dart';
import 'package:githubwrap/result.dart';
import 'githubapi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var enteredusername;
  GitHubAPI gitHubAPI = GitHubAPI();
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
              ),
              onChanged: (text) {
                enteredusername = text;
              },
            ),
          ),
          RaisedButton(
            child: Text('Search'),
            onPressed: () async {
              var userData = await gitHubAPI.getData(enteredusername);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(userData)));
            },
          ),
        ],
      ),
    );
  }
}
