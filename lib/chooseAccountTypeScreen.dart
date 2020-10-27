import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/helper.dart';
import 'package:teachingapp/instructorRegisterScreen.dart';
import 'package:teachingapp/signInScreen.dart';
import 'package:teachingapp/studentRegisterScreen01.dart';

class ChooseAccountTypeScreen extends StatefulWidget {
  static const String id = 'choose_account_type_screen';
  @override
  _ChooseAccountTypeScreenState createState() => _ChooseAccountTypeScreenState();
}

class _ChooseAccountTypeScreenState extends State<ChooseAccountTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            children: <Widget> [
              Container(
                height: 70,
                child: Image.asset('images/logo.png'),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.only(right: 40.0, left: 40.0),
                child: Text("Choose Your Account Type",style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,),
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
              SizedBox(height: 40.0,),
              RoundedButton(title: "INSTRUCTOR",
                onPressed: (){
                  Navigator.pushNamed(context, InstructorRegistrationScreen.id);
                },
              ),
              SizedBox(height: 14.0,),
              RoundedButton(title: "STUDENT",
                onPressed: (){
                  Navigator.pushNamed(context, StudentRegistrationScreen01.id);
                },
              )
            ],
          ),
        )
    );
  }
}
