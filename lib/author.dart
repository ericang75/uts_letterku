import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
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
                    'Explore By Author',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                ImageWithText('assets/authorlewis.png', 'C. S. Lewis'),
                ImageWithText('assets/authorbrown.png', 'Dan Brown'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/authorharuki.png', 'Haruki Murakami'),
                ImageWithText('assets/authorjames.png', 'James Peterson'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/authorjk.png', 'J. K. Rowling'),
                ImageWithText('assets/authorken.png', 'Ken Follet'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/authorleo.png', 'Leo Tolstoy'),
                ImageWithText('assets/authornora.png', 'Nora Roberts'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/authorpaulo.png', 'Paulo Coelho'),
                ImageWithText('assets/authorstephen.png', 'Stephen King'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;

  ImageWithText(this.imagePath, this.text);

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
