import 'package:flutter/material.dart';

class Genre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
            height: 50,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  width: 215,
                  height: 30,
                ),
                Row(
                    children: [
                      Container(
                        child: Image.asset('assets/k.png',
                            height: 30),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      ),
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(color: Colors.black, fontSize: 20,
                              fontWeight: FontWeight.bold),
                          child: Text("LetterKu"),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 100),
                child: Text(
                'Explore By Genre',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                NetworkImage('assets/romance.png', 'Romance'),
                NetworkImage('assets/fantasy.png', 'Fantasy'),
              ],
            ),
            Row(
              children: <Widget>[
                NetworkImage('assets/horror.png', 'Horror'),
                NetworkImage('assets/mystery.png', 'Mystery'),
              ],
            ),
            Row(
              children: <Widget>[
                NetworkImage('assets/comedy.png', 'Comedy'),
                NetworkImage('assets/action.png', 'Action'),
              ],
            ),
            Row(
              children: <Widget>[
                NetworkImage('assets/adventure.png', 'Adventure'),
                NetworkImage('assets/psychological.png', 'Psychological'),
              ],
            ),
            Row(
              children: <Widget>[
                NetworkImage('assets/biography.png', 'Biography'),
                NetworkImage('assets/art.png', 'Art'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NetworkImage extends StatelessWidget {
  final String imagePath;
  final String text;

  NetworkImage(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
