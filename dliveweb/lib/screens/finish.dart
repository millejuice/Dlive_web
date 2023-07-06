import 'package:flutter/material.dart';

class FinishScreen extends StatefulWidget {
  const FinishScreen({super.key});

  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 115,
          ),
          const Text(
            '드라이브 즐길 준비 완료!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 48,
          ),
          ClipOval(
            child: Container(
              color: Color(0xffD9D9D9),
              height: MediaQuery.of(context).size.height / 812 * 240,
              width: MediaQuery.of(context).size.height / 812 * 240,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 41,
          ),
          Text(
            "OOO",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 70,
          ),
          const Text(
            'OO님의 마음에 쏙 드는\n플레이리스트를 들고 올게요!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
