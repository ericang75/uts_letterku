import 'package:flutter/material.dart';
import 'package:letterku/isi.dart';
import 'package:letterku/main_menu.dart';

class Sinopsis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(10)
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainMenuScreen()));
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/messageImage_1696588827553.jpg',
                        height: 20),
                  ),
                  Container(
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 15,
                          fontWeight: FontWeight.bold),
                      child: Text("LetterKu"),
                    ),
                  ),
                ],
              ),
            ],
          ),
           Row(
              children: <Widget>[
                SizedBox(width: 30), //gambar dari pembatas kiri ke kanan
                Image.asset('assets/tentangkamu.jpg', width: 150),
                SizedBox(width: 45,), // gambar ke text kanan tentangkamu

                Container(
                    child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text('Tentang Kamu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(height: 20), // Menambahkan jarak 20 pixel
                          Text('Tere liye', style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
                          SizedBox(height: 20), // Menambahkan jarak 20 pixel
                          Text('Released on Oct, 2016', style: TextStyle(fontSize: 14),),
                          Padding(padding: EdgeInsets.all(10))
                        ]
                    )
                )


              ]
           ),


          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.6', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text('Rating'),
                  ],
                ),
              ),
              VerticalDivider(color: Colors.black),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('4.8 MB', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Size'),
                  ],
                ),
              ),
              VerticalDivider(color: Colors.black),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('648', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Pages'),
                  ],
                ),
              ),
            ],
          ),


          SizedBox(height: 30),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
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
                  child :Text('Menceritakan perjuangan Zaman Zulkarnaen, seorang pengacara muda dari Thompson & Co. Suatu hari, Zaman dipanggil atasannya untuk menyelesaikan sebuah kasus hukum klien. Kasus tersebut adalah persoalan harta warisan yang ditinggalkan kliennya yang belum lama meninggal dunia. Zaman memulai perjalanan nya dari tempat lahir Sri Ningsih di Pulau Bungin. Bisa diibaratkan, diari milik Sri Ningsih itu menjadi peta bagi Zaman untuk melanjutkan perjalanan memecahkan kasus harta waris. Diari itu berisikan lima bagian yang mana bagian itu ditulis oleh Sri Ningsih dengan sebutan Juz.')
              )
            ],
          ),

          SizedBox(height: 30),

          Center(
            child: SizedBox(
              width: 160,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Isi()));
                },
                child: Text('Read Full', style: TextStyle(fontSize: 16),),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}