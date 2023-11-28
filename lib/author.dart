import 'package:flutter/material.dart';
import 'package:letterku/main_menu.dart';

import 'package:letterku/controller/controller.dart';
import 'package:letterku/models/model.dart';

class Author extends StatelessWidget {
  final ImageWithText authorModel;
  Author(this.authorModel);

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
                authorModel.imagePath,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      authorModel.text,
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

class Author1 extends StatelessWidget {
  final ToMainMenu controller = ToMainMenu();

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
                  onPressed: () {
                    controller.navigatetoMainMenu(context);
                  },
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
                style: TextStyle(
                    fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                Author(ImageWithText('assets/authorlewis.png', 'C. S. Lewis')),
                Author(ImageWithText('assets/authorbrown.png', 'Dan Brown')),
              ],
            ),
            Row(
              children: <Widget>[
                Author(ImageWithText('assets/authorharuki.png', 'Haruki Murakami')),
                Author(ImageWithText('assets/authorjames.png', 'James Peterson')),
              ],
            ),
            Row(
              children: <Widget>[
                Author(ImageWithText('assets/authorjk.png', 'J. K. Rowling')),
                Author(ImageWithText('assets/authorken.png', 'Ken Follet')),
              ],
            ),
            Row(
              children: <Widget>[
                Author(ImageWithText('assets/authorleo.png', 'Leo Tolstoy')),
                Author(ImageWithText('assets/authornora.png', 'Nora Roberts')),
              ],
            ),
            Row(
              children: <Widget>[
                Author(ImageWithText('assets/authorpaulo.png', 'Paulo Coelho')),
                Author(ImageWithText('assets/authorstephen.png', 'Stephen King')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

