import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/host_util.dart';

class WebToApp extends StatefulWidget {
  const WebToApp({super.key});

  @override
  State<WebToApp> createState() => _WebToAppState();
}

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _WebToAppState extends State<WebToApp> {
  @override
  Widget build(BuildContext context) {
    HostProvider hostProvider = Provider.of<HostProvider>(context);
    HostUtil hostUtil = HostUtil();
    hostUtil.getHost(hostProvider);

    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Text(''),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: height / 10,
              ),
              const Text(
                '드라이브 즐길 준비 완료!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Dlive 앱을 통해 보다 쾌적하고\n즐거운 드라이브를 경험해보세요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                hostUtil.getCar(hostProvider.character),
                fit: BoxFit.cover,
                // width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () async{
                  const url =
                      'https://lapis-hoodie-e43.notion.site/Dlive-b99ddc5a453643288c7732a5239a1cf0';
                  launchURL(url);
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      Size(width * 2 / 3, height / 10)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text(
                  '앱 다운받기',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
