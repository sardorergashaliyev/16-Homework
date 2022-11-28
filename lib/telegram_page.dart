import 'package:flutter/material.dart';
import 'package:homework/data2.dart';

class MyTelegram extends StatefulWidget {
  const MyTelegram({super.key});

  @override
  State<MyTelegram> createState() => _MyTelegramState();
}

class _MyTelegramState extends State<MyTelegram> {
  List<DataTwo> listok = [
    DataTwo(
        name: 'Evelyn',
        surename: ' Smith ',
        rasm:
            'https://i0.wp.com/logotaglines.com/wp-content/uploads/2018/11/PayPal-Logo-Tagline.jpg?fit=900%2C900&ssl=1'),
    DataTwo(
        name: 'Emily',
        surename: ' Atkinson ',
        rasm:
            'https://cdn.shopify.com/s/files/1/0341/8747/7130/products/QQ_201aa91013130347.jpg?v=1609335401'),
    DataTwo(
        name: 'Oliver',
        surename: ' Wilson ',
        rasm:
            'https://play-lh.googleusercontent.com/tjVAA8dXCH4VYkWS8T6DPwYDI8XSQb4Gih_8CSaHn0ksMhIJE9P2vOY-iBUWJ8aqfw'),
    DataTwo(
        name: 'Sophie',
        surename: ' Baker ',
        rasm:
            'https://i.pinimg.com/originals/53/9f/f3/539ff32ec9d53f12952896dbbf6a28cb.png'),
    DataTwo(
        name: 'Charlie',
        surename: ' William ',
        rasm: 'https://paynet.uz/templates/paynet//images/white.jpg'),
  ];

  // final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff133FDB), width: 2),
                      shape: BoxShape.circle,
                    ),
                    margin: const EdgeInsets.only(top: 10, left: 24),
                    height: 58,
                    width: 58,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/33/a1/1e/33a11ec7801981f093f10698e251f954.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 70,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffDB1337),
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 83, top: 10),
                child: const Text(
                  'Transfer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 18,
                width: 18,
                margin: const EdgeInsets.only(top: 10, left: 107),
                child: const Icon(
                  Icons.add,
                  color: Color(0xffB7004D),
                ),
              )
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 12, top: 33, right: 17, bottom: 35),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listok.length,
                  itemBuilder: (context, index) => Container(
                        height: 76,
                        width: 76,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(listok[index].rasm),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        margin: const EdgeInsets.only(left: 12),
                      )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: listok.length,
              itemBuilder: (context, index) => Container(
                height: 86,
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16, top: 16),
                        height: 56,
                        width: 56,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFBC2EB)),
                        child: Center(
                          child: Text(
                            '${listok[index].name[0]}${listok[index].surename[1]}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 21, left: 16),
                              child: Text(
                                '${listok[index].name} ${listok[index].surename}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff858585),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16, top: 8),
                              child: const Text(
                                'AW BANK UNI 234-46589-000',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ]),
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
