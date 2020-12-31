import 'package:flutter/material.dart';
import 'githubapi.dart';

class ResultPage extends StatefulWidget {
  final String username;
  ResultPage(this.username);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(widget.username),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: Colors.blue[900],
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 400,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                      child: Text(snapshot.data),
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
}
