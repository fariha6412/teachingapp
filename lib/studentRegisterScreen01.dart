import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/helper.dart';
import 'package:flutter/material.dart';
import 'package:teachingapp/authHelper.dart';
import 'package:teachingapp/signInScreen.dart';
import 'package:teachingapp/studentRegisterScreen02.dart';

class StudentRegistrationScreen01 extends StatefulWidget {
  static const String id = 'student_registration01_screen';
  @override
  _StudentRegistrationScreenState01 createState() => _StudentRegistrationScreenState01();
}

class _StudentRegistrationScreenState01 extends State<StudentRegistrationScreen01> {
  TextEditingController _institutionController;
  TextEditingController _registrationNoController;
  TextEditingController _academicYearController;



  @override
  void initState() {
    super.initState();
    _institutionController = TextEditingController(text: "");
    _registrationNoController = TextEditingController(text: "");
    _academicYearController = TextEditingController(text: "");

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
            SizedBox(height: 14.0,),
            Text("Welcome Onboard!", style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,),
            SizedBox(height: 7.0,),
            Text("Don't have an account?", style: TextStyle(fontSize: 14.0),
              textAlign: TextAlign.center,),
            SizedBox(height: 7.0,),
            Text("Let's start making an account", style: TextStyle(fontSize: 14.0),
              textAlign: TextAlign.center,),
            SizedBox(height: 45.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _institutionController,
                decoration: TextFieldDecoration.copyWith(hintText: "Institution"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _registrationNoController,
                decoration: TextFieldDecoration.copyWith(hintText: "Registration No"),
              ),
            ),
            SizedBox(height: 10.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _academicYearController,
                decoration: TextFieldDecoration.copyWith(hintText: "Academic Year"),
              ),
            ),
            SizedBox(height: 70.0,),
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
              title: "NEXT",
              onPressed: () async {
                /*if (_institutionController.text.isEmpty||
                    _registrationNoController.text.isEmpty||
                    _academicYearController.text.isEmpty) {
                  print("Something is empty");
                  return;
                }
                else {}*/
                Navigator.pushNamed(context, StudentRegistrationScreen02.id);
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
