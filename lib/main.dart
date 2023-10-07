import 'package:flutter/material.dart';
import 'package:letterku/genre.dart';
import 'package:letterku/register.dart';
import 'package:letterku/sinopsis.dart';
import 'package:letterku/writer.dart';

import 'author.dart';
import 'getstarted.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Writer()
    );
  }
}
