import 'package:flutter/material.dart';

class Writer extends StatelessWidget {
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
                      child: Image.asset('assets/messageImage_1696588827553.jpg',
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
                padding: EdgeInsets.only(right: 180),
                child: Text(
                    'J.K. Rowling',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),

            Row(
              children: <Widget>[
                ImageWithText('assets/troubled.png', "Troubled Blood", '5.0'),
                ImageWithText('assets/silkworm.png', 'The Silkworm', '4.3'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/carrerofevil.png', 'Career of Evil', '4.6'),
                ImageWithText('assets/lethalwhite.png', 'Lethal White', '4.5'),
              ],
            ),
            Row(
              children: <Widget>[
                ImageWithText('assets/almanac.png', 'Wizardy Almanac', '4.2'),
                ImageWithText('assets/hallows.png', 'Deathly Hallows', '4.3'),
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
  final String text2;

  ImageWithText(this.imagePath, this.text, this.text2);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              Image.asset(
                  imagePath,  height: 180,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              text,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 60),
                              child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text(
                                        text2,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500
                                        ))

                                  ]
                              )
                          )
                        ]
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