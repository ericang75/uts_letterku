import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letterku/button.dart';
import 'package:letterku/login_screen.dart';

import 'main.dart';

class Started extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/letterku.png', width: 360),
                  ],
                ),
              ),
                buildGetStarted(context)
            ],
          ),
        ),
      ),
    );
  }
  Widget buildGetStarted(BuildContext context){
    return ElevatedButton(
      style: buttonPrimary,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text('Get Started')

        );
  }
}


