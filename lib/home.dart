import 'dart:ffi';

import "package:flutter/material.dart";

import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra_clone/avatarW.dart';
import 'package:myntra_clone/insiders.dart';
class Home extends StatelessWidget {
  Home({super.key});
  static const IconData shopping_bag_outlined =
      IconData(0xf37d, fontFamily: 'MaterialIcons');
  final List<String> imagesList = [
    'images/slide1.webp',
    'images/slide2.webp',
    'images/slide3.webp',
    'images/slide4.jpeg',
    'images/slide5.jpeg',
  ];
  final List<String> imageslist2 = ['images/bank1.png', 'images/bank2.png'];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: SafeArea(child:Drawer(backgroundColor: const Color.fromARGB(255, 243, 229, 229),
          child: ListView(
            padding: EdgeInsets.zero,
            children:  [
                Image.asset('images/dimg1.webp',fit: BoxFit.contain,),
                const Align(
                  alignment: Alignment.center,
                  
                  child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 10,bottom: 10),
                      child: Text('Men',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 58, 58, 58)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 10,bottom: 10),
                    child:Text('Women',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 58, 58, 58)),),),
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 10,bottom: 10),
                    child:Text('Kids',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 58, 58, 58)),),),
                    Padding(
                      padding: EdgeInsets.only(left: 0,top: 10,bottom: 20),
                    child:Text('Beauty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 58, 58, 58)),))
                  ],
                )),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 20,left: 10,bottom: 20),
                  child: GestureDetector( onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Insiders()
                                )
                                )},
                     child:const Text('Myntra Insider',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Color.fromARGB(255, 58, 58, 58)),),
                ),),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
            ],
          ),
        ),),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          iconTheme: const IconThemeData(color: Colors.black),
          title: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            height: 30,
          ),
          actions: const [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
              ),
              SizedBox(
                  height: 90,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 90,
                          color: Colors.white,
                          child: Image.asset(
                            'images/class.webp',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const avatarW(img: 'images/slidemen.jpg'),
                        const avatarW(img: 'images/slidewom.jpg'),
                        const avatarW(img: 'images/slidekids.jpg'),
                        const avatarW(img: 'images/slideft.jpg'),
                        const avatarW(img: 'images/slidejew.jpg'),
                      

                        // Container(
                        //   width: 90,
                        //   color: Colors.white,
                        //   child: Image.asset('images/slidemen.jpg'),
                        // ),
                        // Container(
                        //   width: 90,
                        //   color: Colors.white,
                        //   child: Image.asset('images/slidewom.jpg'),
                        // ),
                        // Container(
                        //   width: 90,
                        //   color: Colors.white,
                        //   child: Image.asset('images/slidekids.jpg'),
                        // ),
                        // Container(
                        //   width: 90,
                        //   color: Colors.white,
                        //   child: Image.asset('images/slideft.jpg'),
                        // ),
                        // Container(
                        //     width: 90,
                        //     color: Colors.white,
                        //     child: Image.asset('images/slidejew.jpg')),
                      ])),
              Container(
                width: screenWidth - 10,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/1st.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth,
                child: Image.asset('images/sign.webp'),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: CarouselSlider(
                  options: CarouselOptions(height: 180),
                  items: imagesList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(i));
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/s1.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 40,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 200),
                      autoPlay: true),
                  items: imageslist2.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Image.asset(
                              i,
                              fit: BoxFit.fill,
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
              Container(
                height: 2,
                width: screenWidth - 100,
                color: const Color.fromARGB(255, 185, 175, 175),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Container(
                  height: 20,
                  width: screenWidth,
                  color: const Color.fromARGB(52, 129, 129, 143),
                ),
              ),
              Container(
                height: 40,
                color: Colors.white,
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "ALL-TIME FAVOURITES",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Row(
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 13, right: 12),
                      child: Image.asset(
                        'images/tshirt.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 1, bottom: 5, left: 6, right: 6),
                      child: Image.asset(
                        'images/cshs.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 13, right: 12),
                      child: Image.asset(
                        'images/dress.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 6, right: 6),
                      child: Image.asset(
                        'images/kurtas.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 13, right: 12),
                      child: Image.asset(
                        'images/kurtass.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 8, right: 8),
                      child: Image.asset(
                        'images/track.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 13, right: 12),
                      child: Image.asset(
                        'images/tops.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      height: 132,
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 8, right: 8),
                      child: Image.asset(
                        'images/flipflop.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: Image.asset(
                  'images/viewall.webp',
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 13, top: 10, bottom: 10),
                  child: const Text(
                    "HIGHLIGHTS OF THE DAY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 13, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/highl1.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/highl2.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/highl3.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/highl1.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/hottrendz.webp',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'images/trendy1.gif',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 13, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/trendy1.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/trendy2.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/trendy3.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4, right: 10, bottom: 8),
                      child: Image.asset(
                        'images/trendy3.webp',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/offer.jpeg',
                fit: BoxFit.cover,
              )
            ],
          ),
        ));
  }
}
