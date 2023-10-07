import 'package:flutter/material.dart';

class Sinopsis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: EdgeInsets.all(40)),
          Row(
            children: <Widget>[
              SizedBox(width: 50),
              Image.asset('assets/tentangkamu.png', width: 150),
              Text('Tentang Kamu', style: TextStyle(fontWeight: FontWeight.bold),),
            ]
          ),

          Row(
            children: <Widget> [
              Image.asset('assets/kolo.png')
            ],
          ),

          SizedBox(height: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 60, right: 10),
                  child :Text('About This Book', style: TextStyle(fontWeight: FontWeight.bold),)
              )
            ],
          ),

          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('menceritakan perjuangan Zaman Zulkarnaen, seorang pengacara muda dari Thompson & Co. Suatu hari, Zaman dipanggil atasannya untuk menyelesaikan sebuah kasus hukum klien. Kasus tersebut adalah persoalan harta warisan yang ditinggalkan kliennya yang belum lama meninggal dunia.')
              )
            ],
          ),

          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('Ratings & Review', style: TextStyle(fontWeight: FontWeight.bold),)
              )
            ],
          ),

        ],
      ),
    );
  }
}

