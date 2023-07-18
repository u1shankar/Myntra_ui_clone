import 'package:flutter/material.dart';
import 'package:myntra_clone/home.dart';
class Insiders extends StatelessWidget {
  const Insiders({super.key});
  static const IconData shopping_bag_outlined =
      IconData(0xf37d, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 29, 41),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              
            ),
          ),
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
            Image.asset('images/kira.png',fit: BoxFit.contain,),
            const Padding(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 0),
              child: Align( 
                alignment: Alignment.centerLeft,
                child:Text('Become An INSIDER!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromRGBO(237, 171, 55,1),fontFamily: 'Assistant'),),
                    ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10,bottom: 20),
            child: Text('Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!',style: TextStyle(fontSize:20,fontWeight: FontWeight.w500,color: Color.fromRGBO(164, 164, 168,1),fontFamily: 'Assistant')),
            ),
            const Padding(padding: EdgeInsets.only(left: 10,bottom: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Text("New Goal Criteria",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'assistant'),),
                )
            ),
            Container(
              height: 85,
              margin: const EdgeInsets.only(left: 10,right: 10),
              decoration: const BoxDecoration(color:const Color.fromRGBO( 40, 44, 63,1),borderRadius: BorderRadius.all(Radius.circular(10))  ),

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('images/crown.png',fit: BoxFit.contain,height: 40,),
                  ),
                  const Column(
                    
                    children: [Padding(
                      padding: EdgeInsets.only(top: 15,left:20),
                      child: Align(
                      alignment: Alignment.centerLeft,widthFactor: 5,
                      child: Text('₹0',style:TextStyle(color: Colors.white,fontSize: 26,fontFamily: 'Assistant',fontWeight: FontWeight.bold),
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(left: 0,top: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,widthFactor: 1,
                      child:Text('You\'ve Spent',style:TextStyle(color: Colors.grey,fontSize: 15,fontFamily: 'Assistant',fontWeight: FontWeight.w500),
                      ),)
                    )],
                  ),
                  // ignore: prefer_const_constructors
                  Column(
                    children: const [Padding(
                      padding: EdgeInsets.only(top: 20,left:90),
                      child: Align(
                      alignment: Alignment.topRight,
                      child: Text('₹7000',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Assistant',fontWeight: FontWeight.bold),
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(left: 100,top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child:Text('Goal',style:TextStyle(color: Colors.grey,fontSize: 15,fontFamily: 'Assistant',fontWeight: FontWeight.w500),
                      ),)
                    )],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              margin: const EdgeInsets.only(left: 20,right: 20),
              color: Colors.grey,
            ),
            Container(
              height: 85,
              margin: const EdgeInsets.only(left: 10,right: 10),
              decoration: const BoxDecoration(color:Color.fromRGBO( 40, 44, 63,1),borderRadius: BorderRadius.all(Radius.circular(10))  ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('images/crown.png',fit: BoxFit.contain,height: 40,),
                  ),
                  const Column(
                    
                    children: [Padding(
                      padding: EdgeInsets.only(top: 15,left:20),
                      child: Align(
                      alignment: Alignment.centerLeft,widthFactor: 5,
                      child: Text('0/5',style:TextStyle(color: Colors.white,fontSize: 26,fontFamily: 'Assistant',fontWeight: FontWeight.bold),
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(left: 0,top: 8,right: 50),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:Text('Your Orders',style:TextStyle(color: Colors.grey,fontSize: 15,fontFamily: 'Assistant',fontWeight: FontWeight.w500),
                      ),)
                    )],
                  ),
                  // ignore: prefer_const_constructors
                  Column(
                    children: const [Padding(
                      padding: EdgeInsets.only(top: 20,left:50),
                      child: Align(
                      alignment: Alignment.topRight,
                      child: Text('5',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Assistant',fontWeight: FontWeight.bold),
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(left: 55,top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child:Text('Goal',style:TextStyle(color: Colors.grey,fontSize: 15,fontFamily: 'Assistant',fontWeight: FontWeight.w500),
                      ),)
                    )],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,top: 20,bottom: 30),
              child:Text('Note: Recent purchases will only reflect in the goal once the return window is over',style: TextStyle(fontSize:15,fontWeight: FontWeight.w400,color: Color.fromRGBO(164, 164, 168,1),fontFamily: 'Assistant'),)
            ),
           const Padding(
              padding: EdgeInsets.only(left: 10,bottom: 30,top: 0),
              child: Align( 
                alignment: Alignment.centerLeft,
                child:Text('Benefits Of Joining The Program',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(237, 171, 55,1),fontFamily: 'Assistant'),),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,bottom: 15
              ),
              child: Row(
                children: [Image.asset('images/clock.png',height: 60,),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text('Early Access to The Sales',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Assistant',fontWeight: FontWeight.w500)),
                )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(157, 255, 255, 255),
              height: 0.5,
              margin: const EdgeInsets.only(left: 10,right: 10),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,bottom: 15,top: 15,
              ),
              child: Row(
                children: [Image.asset('images/cup.png',height: 60,),
                // ignore: prefer_const_constructors
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Insider Exclusive Rewards & Benefit',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Assistant',fontWeight: FontWeight.w500)),
                    ),
                  ],
                )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 0.5,
              margin: const EdgeInsets.only(left: 10,right: 10),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,bottom: 15,top: 15
              ),
              child: Row(
                children: [Image.asset('images/call.png',height: 60,),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text('Priority Customer Support',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Assistant',fontWeight: FontWeight.w500)),
                )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,bottom: 20,top: 30),
              child: Align( 
                alignment: Alignment.centerLeft,
                child:Text('How does it Work',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(237, 171, 55,1),fontFamily: 'Assistant'),),
                    ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10,bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Text('Earn SuperCoins with every purchase.',
            style: TextStyle(fontSize:16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(164, 164, 168,1),
            fontFamily: 'Assistant')),)
            ),
            const Padding(padding: EdgeInsets.only(left: 10,bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Text('You can get upto 3 SuperCoins for every ₹100 spent.',
            style: TextStyle(fontSize:16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(164, 164, 168,1),
            fontFamily: 'Assistant')),)
            ),
           Container(
            margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
            color: const Color.fromRGBO( 40, 44, 63,1),
            height: 150,
            width: 400,
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Image.asset('images/linearview.png',fit: BoxFit.contain) 
            )         ,
            Container(
            margin: const EdgeInsets.only(top: 0,left: 10,right: 10),
            color: const Color.fromARGB(255, 55, 60, 88),
            height: 50,
            width: 400,
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              children: [
                Padding(padding:const EdgeInsets.only(top: 2,right: 20,left: 10),
                child:Image.asset('images/up.png',fit: BoxFit.contain,height: 40,),
                ),const Text('Shop on Myntra to Upgrade your tier',style: TextStyle(color: Colors.white),)
              ],
            ) 
            )         ,
            const Padding(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 30),
              child: Align( 
                alignment: Alignment.centerLeft,
                child:Text('Rewards',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(237, 171, 55,1),fontFamily: 'Assistant'),),
                    ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10,bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Text('Use your SuperCoins to get exciting rewards.',
            style: TextStyle(fontSize:16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(164, 164, 168,1),
            fontFamily: 'Assistant')),)
            ),
            SingleChildScrollView(
          child: Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                    height: 300,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                width: 350,
                                padding: const EdgeInsets.only(top: 0,bottom: 5,),
                                color: Colors.white,
                                child: Image.asset(
                                  'images/voucher.jpg',
                                  fit: BoxFit.contain,
                                ),
                                
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                
                                color: Colors.white,
                                padding: const EdgeInsets.only(top: 3,bottom: 10,left: 15,right: 15),
                                child: const Text("Get Tokyo Talkies Voucher worth Rs.400",style: TextStyle(fontSize:18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Assistant')),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child:Column(
                            children: [
                              Container(
                                width: 350,
                                padding: const EdgeInsets.only(top: 0,bottom: 5,),
                                color: Colors.white,
                                child: Image.asset(
                                  'images/voucher1.jpg',
                                  fit: BoxFit.contain,
                                ),
                                
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                color: Colors.white,
                                padding: const EdgeInsets.only(top: 3,bottom: 10,left: 15,right: 15),
                                child: const Text("Get Levi's Voucher worth Rs. 500",style: TextStyle(fontSize:18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Assistant')),
                              )
                            ],
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child:Column(
                            children: [
                              Container(
                                width: 350,
                                padding: const EdgeInsets.only(top: 0,bottom: 5,),
                                color: Colors.white,
                                child: Image.asset(
                                  'images/voucher2.jpg',
                                  fit: BoxFit.contain,
                                ),
                                
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                color: Colors.white,
                                padding: const EdgeInsets.only(top: 3,bottom: 10,left: 15,right: 15),
                                child: const Text("Get Myntra Voucher worth Rs.500",style: TextStyle(fontSize:18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Assistant')),
                              )
                            ],
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child:Column(
                            children: [
                              Container(
                                width: 350,
                                padding: const EdgeInsets.only(top: 0,bottom: 5,),
                                color: Colors.white,
                                child: Image.asset(
                                  'images/ad.jpg',
                                  fit: BoxFit.contain,
                                ),
                                
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                color: Colors.white,
                                padding: const EdgeInsets.only(top: 3,bottom: 10,left: 15,right: 15),
                                child: const Text("Get SonyLiv Premium 1 Month Subscription",style: TextStyle(fontSize:18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Assistant')),
                              )
                            ],
                          ),),
                          
                        ]
                        )
                        ),
              )
                      ]
                      )
            ),
          
                Container(
                  height: 100,
                  padding: const EdgeInsets.only(top: 10,left:10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset('images/logo.png',height: 15,fit: BoxFit.contain,),
                          ),
                          Image.asset('images/insiderlogo.png',
                          fit: BoxFit.contain,height: 15,)
                        ]
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: const Text('Fashion Advice | VIP Access | Extra Savings',style: TextStyle(fontSize:14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(157, 255, 255, 255),
                    fontFamily: 'Assistant'),),
                  )
                  
                      ],
                    ),
                  ),
              
            
        ],
        
        ),
        
      ),
    );
  }
}