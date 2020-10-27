import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/helper.dart';
import 'package:flutter/material.dart';
import 'package:teachingapp/authHelper.dart';
import 'package:teachingapp/signInScreen.dart';

class InstructorRegistrationScreen extends StatefulWidget {
  static const String id = 'instructor_registration_screen';
  @override
  _InstructorRegistrationScreenState createState() => _InstructorRegistrationScreenState();
}

class _InstructorRegistrationScreenState extends State<InstructorRegistrationScreen> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _userNameController;
  TextEditingController _confirmPasswordController;
  TextEditingController _designationController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    _userNameController = TextEditingController(text: "");
    _confirmPasswordController = TextEditingController(text: "");
    _designationController = TextEditingController(text: "");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget> [
            Container(
              height: 70.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(height: 14.0,),
            Text("Welcome Onboard!", style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
            SizedBox(height: 7.0,),
            Text("Don't have an account?", style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
            SizedBox(height: 7.0,),
            Text("Let's start making an account", style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
            SizedBox(height: 45.0,),
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
                decoration: TextFieldDecoration.copyWith(hintText: "Confirm password"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
                widthFactor: 0.82,
                child: TextField(
                controller: _designationController,
                obscureText: true,
                decoration: TextFieldDecoration.copyWith(hintText: "Designation"),
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already have an account? ", style: TextStyle(fontSize: 16,)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.id);
                  },
                  child: new Text(" Sign in", style: TextStyle(fontSize: 16, color: HexColor('#51adcf')),),
                )
              ],
            ),
            SizedBox(height: 15.0,),
            RoundedButton(
              title: "REGISTER",
              onPressed: () async  {
                if (_emailController.text.isEmpty|| _passwordController.text.isEmpty|| _confirmPasswordController.text.isEmpty|| _userNameController.text.isEmpty|| _designationController.text.isEmpty) {
                  print("Something is empty");
                  return;
                }
                else{
                }
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
