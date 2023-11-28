import 'package:flutter/material.dart';
import 'package:letterku/controller/genre_controller.dart';
import 'package:letterku/views/romance.dart';
import 'package:letterku/fantasy.dart';
import 'package:letterku/views/action.dart';
import 'package:letterku/views/comedy.dart';
import 'package:letterku/views/horror.dart';
import 'package:letterku/views/mystery.dart';
import 'package:letterku/models/model.dart';


class Genre extends StatelessWidget {
  final ImageWithText genreModel;
  Genre(this.genreModel);
  final GenreController controller1 = GenreController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          navigateToGenrePage(context, genreModel.text);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  genreModel.imagePath,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        genreModel.text,
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
      ),
    );
  }
  void navigateToGenrePage (BuildContext context, String genre){
    switch (genre){
      case 'Romance':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Romance()),
        );
        break;
      case 'Fantasy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Fantasy()),
        );
        break;
      case 'Horror':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Horror()),
        );
        break;
      case 'Mystery':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Mystery()),
        );
        break;
      case 'Comedy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Comedy()),
        );
        break;
      case 'Action':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActionGenre()),
        );
        break;
    }
  }
}

class Genre1 extends StatelessWidget {
  final GenreController controller2 = GenreController();

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
                        controller2.navigatetoMainMenu(context);
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
                    'Explore By Genre',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/romance.png', 'Romance')),
                Genre(ImageWithText('assets/fantasy.png', 'Fantasy')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/horror.png', 'Horror')),
                Genre(ImageWithText('assets/mystery.png', 'Mystery')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/comedy.png', 'Comedy')),
                Genre(ImageWithText('assets/action.png', 'Action')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}