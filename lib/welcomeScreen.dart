import 'package:flutter/material.dart';
import 'package:teachingapp/helper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teachingapp/chooseAccountTypeScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
            shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 28.0),
            children: <Widget> [
              Image.asset('images/welcome.jpg'),
              SizedBox(height: 25.0,),
              Text("Give Education System A Life",style: TextStyle(fontSize: 18, color: HexColor('#51adcf')),textAlign: TextAlign.center,),
              SizedBox(height: 25.0,),
              Text("TeachingApp a platform for students and instructors to make academic grading system easy. So get started , keep your courses organized and get to know constant progress on TeachingApp.",style: TextStyle(fontSize: 16, color:Colors.black), textAlign: TextAlign.center,),
              SizedBox(height: 25.0,),
              RoundedButton(title: "GET STARTED",
                onPressed: (){
                  Navigator.pushNamed(context, ChooseAccountTypeScreen.id);
                  //ChooseAccountTypeScreen();
                },
             ),
          ],
        ),
      )
    );
  }
}
