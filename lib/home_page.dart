import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'data_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<Datamodel> list = [
  Datamodel(
    sana: '05/2025',
    narx: '\$12567.48',
    icons: 'https://source.unsplash.com/random/1',
    name: 'ANDREA',
    kartaRaqam: '3452 1235 7894 1678',
    price: '\$20.00',
    title: 'Shopping',
    data: 'Tue 12.05.2021',
  ),
  Datamodel(
    sana: '05/2025',
    narx: '\$12567.48',
    icons: 'https://source.unsplash.com/random/1',
    name: 'ANDREA',
    kartaRaqam: '3452 1235 7894 1678',
    price: '\$29.00',
    title: 'Movie Ticket',
    data: 'Mon 11.05.2021',
  ),
  Datamodel(
    sana: '05/2025',
    narx: '\$12567.48',
    icons: 'https://source.unsplash.com/random/1',
    name: 'ANDREA',
    kartaRaqam: '3452 1235 7894 1678',
    price: '\$9.50',
    title: 'Amazon',
    data: 'Mon 11.05.2021',
  ),
  Datamodel(
    sana: '05/2025',
    narx: '\$12567.48',
    icons: 'https://source.unsplash.com/random/1',
    name: 'ANDREA',
    kartaRaqam: '3452 1235 7894 1678',
    price: '\$19.30',
    title: 'Udemy',
    data: 'Tue 12.05.2021',
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Positioned(
            left: 251,
            top: -54,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/yellow.png'),
              ),
            ),
          ),
          const Positioned(
            top: 206,
            right: 247,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/green.png'),
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.only(top: 63, left: 24),
                  height: 58,
                  width: 58,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://logobank.uz:8005/media/logos_png/click-01.png',
                    ),
                  ),
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 63, left: 22),
                    child: const Text(
                      'Good morning',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 9, left: 22),
                    child: Text(
                      list[0].name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            Container(
              margin: const EdgeInsets.only(top: 29, left: 24, right: 24),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 26, left: 16),
                      child: const Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 16),
                      child: Text(
                        list[0].narx,
                        style: const TextStyle(
                            color: Color(0xff333333),
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 18),
                      height: 88,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xff133FDB),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22, left: 16),
                              child: Text(
                                list[0].kartaRaqam,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 5),
                              child: Text(
                                list[0].sana,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ]),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35, left: 24),
              child: const Text(
                'LAST TRANSACTIONS',
                style: TextStyle(
                  color: Color(0xff858585),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 16),
                    height: 76,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(children: [
                      Column(children: [
                        Container(
                          child: Text(list[index].title),
                        ),
                        Container(
                          child: Text(list[index].data),
                        ),
                      ]),
                      Container(
                        child: Text(list[index].price),
                      ),
                    ]),
                  );
                },
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
