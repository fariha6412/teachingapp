import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/chooseAccountTypeScreen.dart';
import 'package:teachingapp/helper.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:teachingapp/authHelper.dart';

class SignInScreen extends StatefulWidget {
  static const String id = 'sign_in_screen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool _validate = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }
  @override
  Widget build(BuildContext context) {
    backgroundColor: Colors.white;
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
            SizedBox(height: 45.0,),
            FractionallySizedBox(
              widthFactor: 0.82,
              child: TextField(
                controller: _emailController,
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

            SizedBox(height: 60.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: TextStyle(fontSize: 16,)),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ChooseAccountTypeScreen.id);
                  },
                  child: new Text(" Register", style: TextStyle(fontSize: 16, color: HexColor('#51adcf')),),
                )
              ],
            ),
            SizedBox(height: 15.0,),
            RoundedButton(
              title: "SIGN IN",
              onPressed: () async  {
                if (_emailController.text.isEmpty|| _passwordController.text.isEmpty ) {
                  print("Email and password is empty");
                  return;
                }
                else{
                  _validate = false;
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
