import 'package:dliveweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dliveweb/utils/member_util.dart';

class GetCodeScreen extends StatefulWidget {
  const GetCodeScreen({Key? key});

  @override
  State<GetCodeScreen> createState() => _GetCodeScreenState();
}

class _GetCodeScreenState extends State<GetCodeScreen> {
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
            '초대 코드를 입력해주세요!',
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
                      hintText: '초대코드',
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
                '친구로부터 코드를 공유받아요!',
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
              memberProvider.setCode(_textController.text);
              Navigator.pushNamed(context, '/signup2');
            },
          ),
        ]),
      ),
    );
  }
}
