import 'package:dliveweb/screens/core_music_add.dart';
import 'package:dliveweb/screens/finish.dart';
import 'package:dliveweb/screens/signup_page1.dart';
import 'package:dliveweb/screens/signup_page2.dart';
import 'package:dliveweb/screens/signup_page3.dart';
import 'package:dliveweb/screens/web_to_app.dart';
import 'package:flutter/material.dart';

class DliveWeb extends StatelessWidget {
  const DliveWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dlive',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUpPage1(),
        '/signup2': (context) => const SignUpPage2(),
        '/signup3': (context) => const SignUpPage3(),
        '/coremusicadd': (context) => const CoreMusicAdd(),
        '/finish': (context) => const FinishScreen(),
        '/makeroomwaiting' :(context) => const WebToApp()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff888888),
      ),
    );
  }
}
