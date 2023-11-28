import 'package:flutter/material.dart';
import 'package:letterku/login_screen.dart';
//import '../../../Downloads/backup/age_select.dart';
//import '../../../Downloads/backup/gender_select.dart';
import 'package:letterku/views/gender_select_view.dart';
import 'package:letterku/models/gender_select_model.dart';
import 'package:letterku/controller/gender_select_controller.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/bookshelf.png', width: double.infinity, height: 250),
              header(context),
              inputField(context),
              Register(context),
            ],

          ),
        ),
      ),
    );
  }

  header(context){
    return Column(
      children: [
        Text(
          'Welcome to LetterKu!',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
      ],
    );
  }

  inputField(context){
    return Container(
      margin: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 0),
          Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              filled: true,
            ),
          ),
          SizedBox(height: 5),
          Text(
              'Create Password',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              filled: true,
            ),
          ),
          SizedBox(height: 5),
          Text(
              'Confirm Password',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              filled: true,
            ),
          ),
        ],
      ),
    );
  }

  Register(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> GenderSelectView(GenderSelectController(GenderSelectModel()) , GenderSelectModel())));
          },
          child: Text(
            'REGISTER',
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65)
          ),
        ),
        SizedBox(height: 0),
        Text('Already have an account?', style: TextStyle(fontWeight: FontWeight.bold)),
        ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },
          child: Text(
            'SIGN IN',
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65)
          ),)
      ],
    );
  }
}
