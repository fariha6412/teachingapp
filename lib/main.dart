import 'package:flutter/material.dart';
import 'package:teachingapp/chooseAccountTypeScreen.dart';
import 'package:teachingapp/studentRegisterScreen02.dart';
import 'package:teachingapp/welcomeScreen.dart';
import 'package:teachingapp/instructorRegisterScreen.dart';
import 'package:teachingapp/studentRegisterScreen01.dart';
import 'package:teachingapp/signInScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeScreen());
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.sansitaTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        //LoginScreen.id: (context) => LoginScreen(),
        //RegistrationScreen.id: (context) => RegistrationScreen(),
        ChooseAccountTypeScreen.id: (context) => ChooseAccountTypeScreen(),
        InstructorRegistrationScreen.id: (context) => InstructorRegistrationScreen(),
        StudentRegistrationScreen01.id: (context) => StudentRegistrationScreen01(),
        StudentRegistrationScreen02.id: (context) => StudentRegistrationScreen02(),
        SignInScreen.id: (context) => SignInScreen(),
      },
    );
  }
}