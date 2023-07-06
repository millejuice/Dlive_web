import 'package:dliveweb/screens/core_music_add.dart';
import 'package:dliveweb/screens/core_music_add_select.dart';
import 'package:dliveweb/screens/finish.dart';
import 'package:dliveweb/screens/signup_page1.dart';
import 'package:dliveweb/screens/signup_page2.dart';
import 'package:dliveweb/screens/signup_page3.dart';
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
        '/coremusicaddselect': (context) => const CoreMusicAddSelectScreen(),
        '/finish': (context) => const FinishScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xff888888),
      ),
    );
  }
}
