import 'package:flutter/material.dart';
import 'package:cashback_app/pages/home.dart';

void main() {
  runApp(const CashbackApp());
}

class CashbackApp extends StatelessWidget {
  const CashbackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
