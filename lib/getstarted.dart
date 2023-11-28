import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letterku/button.dart';
import 'package:letterku/login_screen.dart';
import 'package:letterku/sinopsis.dart';
import '../database/novel_operation.dart';
import '../models/novels_model.dart';

import 'main.dart';

class Started extends StatefulWidget {
  @override
  _StartedState createState() => _StartedState();
}

class _StartedState extends State<Started> {
  final novelOperation controller = novelOperation();
  late List<Novels> novels = [];

  @override
  void initState() {
    super.initState();
    loadNovelsData();
  }

  Future<void> loadNovelsData() async {
    novels = await controller.getNovelsByGenre("Romance");
    setState(() {}); // Refresh the UI
  }

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
              buildGetStarted(context),
              if (novels.isNotEmpty) ...buildNovelsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGetStarted(BuildContext context) {
    return ElevatedButton(
      style: buttonPrimary,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      child: Text('Get Started'),
    );
  }

  List<Widget> buildNovelsList() {
    return novels.map((novel) {
      return ListTile(
        title: Text(novel.novelName ?? ''),
        subtitle: Text(novel.novelGenre ?? ''),
      );
    }).toList();
  }
}
