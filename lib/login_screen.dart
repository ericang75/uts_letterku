import 'package:flutter/material.dart';
import 'package:letterku/main_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/controller.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ToMainMenu controller1 = ToMainMenu();
  final ToRegister controller2 = ToRegister();

  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences loginData;
  late bool newuser;

  void initState(){
    super.initState();
    check_login();
  }

  void check_login() async { // mengecek apakah user sudah login atau belum.
    loginData = await SharedPreferences.getInstance();
    newuser = (loginData.getBool('login') ?? true);
    print(newuser);

    if (newuser == false) {
      Navigator.pushReplacement
        (context, new MaterialPageRoute(builder: (context) => MainMenuScreen()));
    }
  }

  @override
  void dispose(){
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

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
            controller: username_controller,
            decoration: InputDecoration(
              labelText: "username",
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
            controller: password_controller,
            decoration: InputDecoration(
              labelText: "password",
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
          onPressed: ()
          {
            String username = username_controller.text;
            String password = password_controller.text;

            if (username != '' && password != '') {
              loginData.setBool('login', false);
              loginData.setString('username', username);
              controller1.navigatetoMainMenu(context);
            }
          },
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
            controller2.navigatetoRegister(context);
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