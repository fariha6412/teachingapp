import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/helper.dart';
import 'package:flutter/material.dart';
import 'package:teachingapp/authHelper.dart';
import 'package:teachingapp/signInScreen.dart';

class StudentRegistrationScreen02 extends StatefulWidget {
  static const String id = 'student_registration02_screen';
  @override
  _StudentRegistrationScreenState02 createState() => _StudentRegistrationScreenState02();
}

class _StudentRegistrationScreenState02 extends State<StudentRegistrationScreen02> {

  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _userNameController;
  TextEditingController _confirmPasswordController;


  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    _userNameController = TextEditingController(text: "");
    _confirmPasswordController = TextEditingController(text: "");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              height: 70.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(height: 35.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _userNameController,
                decoration: TextFieldDecoration.copyWith(hintText: "User name"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _emailController,
                obscureText: true,
                decoration: TextFieldDecoration.copyWith(hintText: "Email"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: TextFieldDecoration.copyWith(hintText: "Password"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: TextFieldDecoration.copyWith(
                    hintText: "Confirm password"),
              ),
            ),

            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                    style: TextStyle(fontSize: 16,)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.id);
                  },
                  child: new Text(" Sign in", style: TextStyle(
                      fontSize: 16, color: HexColor('#51adcf')),),
                )
              ],
            ),
            SizedBox(height: 15.0,),
            RoundedButton(
              title: "REGISTER",
              onPressed: () async {
                if (_emailController.text.isEmpty ||
                    _passwordController.text.isEmpty ||
                    _confirmPasswordController.text.isEmpty ||
                    _userNameController.text.isEmpty) {
                  print("Something is empty");
                  return;
                }
                else {}
                try {
                  //final user = await AuthHelper.signInWithEmail( _emailController.text, _passwordController.text);
                }
                catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
