import 'package:flutter/material.dart';
import 'package:letterku/register.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Image.asset('assets/bookshelf.png', width: double.infinity),
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
          'Welcome Back!',
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
            SizedBox(height: 10),
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
            SizedBox(height: 10),
            Text(
                'Password',
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
          onPressed: (){},
          child: Text(
            'SIGN IN',
            style: TextStyle(fontSize: 20),

          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65)
          ),
        ),
        SizedBox(height: 40),
        Text('Dont have an account?', style: TextStyle(fontWeight: FontWeight.bold)),
        ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
              },
            child: Text(
              'REGISTER!',
              style: TextStyle(fontSize: 20),
            ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50)
        ),)
      ],
    );
  }
}
