import 'package:flutter/material.dart';
import 'package:homework/data_model.dart';
import 'package:homework/home_page.dart';
import 'package:homework/statistics.dart';
import 'package:homework/telegram_page.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

int indexi = 0;

class _EnterPageState extends State<EnterPage> {
 

  int colorIndex = 0;

  List<Color> color = [
    const Color(0xff133FDB),
  ];

  List lst = [
    const MyHomePage(),
    const MyTelegram(),
    const MyStatistics(),
    Container(
      color: Colors.pink,
    ),
  ];

  // List<Widget> pages = [const MyTelegram()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lst[indexi],
      backgroundColor: const Color(0xffF5F5F5),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexi,
          onTap: (index) {
            indexi = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_membership,
                  color: color[colorIndex],
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.telegram,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.show_chart), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: ''),
          ]),
    );
  }
}
