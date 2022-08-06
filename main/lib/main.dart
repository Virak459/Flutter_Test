// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:main/bottun1_body/btn1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: dr(),
    );
  }
}

class dr extends StatelessWidget {
  const dr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 208, 196, 196),
      width: double.infinity,
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 500.0,
            child: Column(
              children: [
                Image.asset(
                  'asset/images/welcome.gif',
                  width: double.infinity,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Newscearn()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      color: Colors.lime[200],
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(19),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 81, 94, 83),
                          blurRadius: 4,
                          offset: Offset(2, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Text(
                      '     WelCome to BUY ME  ' +
                          '\n  Click me Go to Shopping  ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Newscearn extends StatelessWidget {
  const Newscearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        searchBar: true,
        backgroundColor: Colors.pink[200],
        title: const Text("Food Panda"),
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink[200],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.person_outline,
                    size: 80,
                  ),
                  Text(
                    'user name',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'OUM VIRAK',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            // GFDrawerHeader(
            //   currentAccountPicture: const GFAvatar(
            //     backgroundImage: AssetImage('asset/images/staff.jfif'),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: const [
            //       Text('user name'),
            //       Text(
            //         'OUM VIRAK',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //     ],
            //   ),
            // ),
            const ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: Colors.pink,
              ),
              title: Text('សំណព្វចិត្ត'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.line_style,
                color: Colors.pink,
              ),
              title: Text('ការកុម្ម៉ង់ និងការកុម្ម៉ង់ឡើងវិញ​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.person_outline_rounded,
                color: Colors.pink,
              ),
              title: Text('ពតីមានផ្ទាល់ខ្លួន​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.place_outlined,
                color: Colors.pink,
              ),
              title: Text('អាសាយដ្ឋាន​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.pink,
              ),
              title: Text('វិធីទូទាត់ប្រាក់​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.emoji_events_outlined,
                color: Colors.pink,
              ),
              title: Text('ហ្គេម​ និង​ រង្វាន់​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.generating_tokens_outlined,
                color: Colors.pink,
              ),
              title: Text('ប័ណ្ណចំណាយ​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.emoji_objects_outlined,
                color: Colors.pink,
              ),
              title: Text('ជំនួយការអតិថិជន​'),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(
                Icons.card_giftcard_outlined,
                color: Colors.pink,
              ),
              title: Text('ណែនាំមិត្ត​'),
              onTap: null,
            ),
            const Text("________________________________________________"),
            const ListTile(
              onTap: null,
              title: Text('ការកំណត់'),
            ),
            const ListTile(
              onTap: null,
              title: Text('លក្ខខណ្ឌផ្សេងៗ/ឯកជនភាព'),
            ),
            const ListTile(
              onTap: null,
              title: Text('ចាកចេញ'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   child: Column(
            //     children: [
            //       InkWell(
            //         child: Column(children: [
            //           Ink.image(
            //             image: AssetImage('asset/images/k1 (3).jpg'),
            //             width: 200,
            //           )
            //         ]),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              color: Color.fromARGB(194, 255, 176, 176),
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      // //1st Image of Slider
                      // Container(
                      //   margin: EdgeInsets.all(6.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(8.0),
                      //     image: DecorationImage(
                      //       image: NetworkImage(
                      //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLCkMhSNbvtg4nQDObJYghhHSgHPJ0ZR1p3Q&usqp=CAU"),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      for (int i = 0; i < 4; i++)
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'asset/images/k1 (3).jpg',
                                width: 435,
                              ),
                              Text('មុខម្លូបទី ' + "${i}",
                                  style: TextStyle(fontSize: 19)),
                            ],
                          ),
                        ),
                    ],
                    options: CarouselOptions(
                      // enlargeCenterPage: true,// ដាក់អោយitemរត់ចំកណ្តាល
                      autoPlay: true,
                      aspectRatio: 2.5,
                      height: 241.2,
                      autoPlayCurve: Curves.easeOut,
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      viewportFraction: 0.8,
                      pauseAutoPlayInFiniteScroll: true,
                    ),
                  ),
                ],
              ),
              height: 242,
            ),
            Container(
              color: Color.fromARGB(194, 255, 176, 176),
              width: double.infinity,
              height: 370.0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5, left: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => cool()));
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15.0, left: 5.0),
                            child: Image.asset(
                              'asset/images/Delivery.jpg',
                              scale: 1.7,
                              width: 150,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'ដឹកជញ្ជូនអាហារ',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.black),
                              ),
                              Text(
                                '',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              Text(
                                'កុម្ម៉ង់អាហារអ្នក',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 245.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: (() {}),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(86, 150, 144, 144),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: 170.0,
                              height: 220.0,
                              child: Column(children: [
                                Text(
                                  'ហាងទំនិញ',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                                Text(
                                  'គ្រឿងទេស​​ និង ច្រើនមុខទៀត',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                Image.asset(
                                  'asset/images/kr.jpg',
                                  width: 110.0,
                                )
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0, top: 5),
                          child: Column(
                            children: [
                              Container(
                                child:
                                    TextButton(onPressed: () {}, child: dit2),
                                margin: EdgeInsets.only(bottom: 5.0),
                              ),
                              Container(
                                  child: TextButton(
                                      onPressed: () {}, child: dit3)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 87.0,
              color: Colors.pink[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/images/Food.png',
                            width: 50,
                          ),
                          const Text('food',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/images/drink.png',
                            width: 50,
                          ),
                          const Text('Drink',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/images/discount.png',
                            width: 50,
                          ),
                          const Text('Discount',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/images/shop.png',
                            width: 50,
                          ),
                          const Text('Shop',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/images/Contect.png',
                            width: 50,
                          ),
                          const Text('Contect',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

dynamic dit1 = Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(86, 150, 144, 144),
      width: 1,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  width: 170.0,
  height: 220.0,
  child: Column(children: [
    Text(
      'ហាងទំនិញ',
      style: TextStyle(fontSize: 20.0, color: Colors.black),
    ),
    Text(
      'គ្រឿងទេស​​ និង ច្រើនមុខទៀត',
      style: TextStyle(fontSize: 12, color: Colors.black),
    ),
    Image.asset(
      'asset/images/kr.jpg',
      width: 110.0,
    )
  ]),
);
var dit2 = Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(86, 150, 144, 144),
      width: 1,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  width: 130,
  height: 110,
  child: Column(children: [
    Text(
      'pandamart',
      style: TextStyle(fontSize: 18.0, color: Colors.black),
      overflow: TextOverflow.ellipsis,
    ),
    Text(
      'ដឹកលឿន , ចុះដល់៤០%',
      style: TextStyle(fontSize: 12, color: Colors.black),
    ),
    Image.asset('asset/images/shop.png', width: 60),
  ]),
);
var dit3 = Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(86, 150, 144, 144),
      width: 1,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  width: 130,
  child: Column(children: [
    Text(
      'ទៅដល់ផ្ទាល់',
      style: TextStyle(fontSize: 17.0, color: Colors.black),
      overflow: TextOverflow.ellipsis,
    ),
    Text(
      'បញ្ចុះ ដល់ ៥០%',
      style: TextStyle(fontSize: 12.0, color: Colors.black),
    ),
    Image.asset(
      'asset/images/pick up.png',
      width: 43,
    ),
  ]),
);
