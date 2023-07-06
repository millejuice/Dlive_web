import 'package:dliveweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dliveweb/utils/member_util.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({Key? key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final memberProvider = Provider.of<MemberProvider>(context);

    return Scaffold(
      backgroundColor: ColorStyle.background,
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 95,
          ),
          const Text(
            '멋진 캐릭터네요!\n이름은 무엇인가요?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 35,
          ),
          Image.asset(
            memberProvider.character,
            width: MediaQuery.of(context).size.width / 375 * 279,
            height: MediaQuery.of(context).size.height / 812 * 280,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 35,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.8, // 수정: TextField 너비 조정
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffe4e4e4),
                      border: InputBorder.none,
                      hintText: '이름',
                      hintStyle: TextStyle(
                        color: Color(0xff9C9C9C),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 812 * 5,
              ),
              Text(
                '이름은 언제든 바꿀 수 있어요.',
                style: TextStyle(fontSize: 14, color: Color(0xff626262)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 812 * 112,
          ),
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height / 812 * 46,
              width: MediaQuery.of(context).size.width / 375 * 249,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  '확인',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              memberProvider.setName(_textController.text);
              Navigator.pushNamed(context, '/signup3');
            },
          ),
        ]),
      ),
    );
  }
}
