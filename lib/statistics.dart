import 'package:flutter/material.dart';

class MyStatistics extends StatefulWidget {
  const MyStatistics({super.key});

  @override
  State<MyStatistics> createState() => _MyStatisticsState();
}

class _MyStatisticsState extends State<MyStatistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 37,
                width: 37,
                margin: const EdgeInsets.only(left: 24, top: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/yellow.png'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 83, top: 10),
                child: const Text(
                  'Reports',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, top: 35),
                    height: 79,
                    width: 156,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color(0xffF8E192),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 14, left: 14),
                          child: const Text(
                            'Money In',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 13, top: 13),
                              child: const Text(
                                '+ \$3,456.98',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 11, top: 13),
                              child: const Icon(
                                Icons.trending_up,
                                color: Color(0xff133FDB),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 35),
                    height: 79,
                    width: 156,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color(0xffB6E0F3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 14, left: 14),
                          child: const Text(
                            'Money Out',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 13, top: 13),
                              child: const Text(
                                '- \$567.25',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 11, top: 13),
                              child: const Icon(
                                Icons.trending_up,
                                color: Color(0xff133FDB),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: const Image(
                  image: AssetImage('assets/Monthly.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                height: 76,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: Color(0xffD1ECF7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, top: 16),
                      child: const Text(
                        'In Budget',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16, top: 8),
                          child: const Text(
                            'Shopping ',
                            style: TextStyle(
                              color: Color(0xff858585),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 109, top: 6),
                          child: const Text(
                            '\$50.00/ \$100.00',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                height: 76,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: Color(0xffFAE2EE),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16, top: 16),
                        child: const Text(
                          'Out of Budget',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16, top: 8),
                          child: const Text(
                            'Subscriptions ',
                            style: TextStyle(
                              color: Color(0xff858585),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 89, top: 6),
                          child: const Text(
                            '\$50.00/ \$100.00',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ])
                    ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
