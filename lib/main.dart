import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdApp(),
  ));
}

class IdApp extends StatelessWidget {
  const IdApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = ["Name", "Date of Birth"];
    List<String> answers = ["Muhammad Nauman Sheikh","November 10, 2000"];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.blue.shade300,
            ],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Owner Id Card"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.lightBlue[200],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
