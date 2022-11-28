import 'package:flutter/material.dart';
import 'package:homework/statistics.dart';
import 'package:homework/telegram_page.dart';

import 'enter_page.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterPage(),
    );
  }
}
