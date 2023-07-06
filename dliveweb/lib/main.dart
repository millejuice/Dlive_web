import 'package:dliveweb/web.dart';
import 'package:flutter/material.dart';
import 'package:dliveweb/utils/member_util.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MemberProvider>(
        create: (_) => MemberProvider(),
      ),
    ],
    child: DliveWeb(),
  ));
}
