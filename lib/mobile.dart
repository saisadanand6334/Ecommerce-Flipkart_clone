import 'package:flipkart_clonne/apple.dart';
import 'package:flipkart_clonne/cart.dart';
import 'package:flutter/material.dart';

class Mobi extends StatefulWidget {
  const Mobi({Key? key}) : super(key: key);

  @override
  State<Mobi> createState() => _MobiState();
}

class _MobiState extends State<Mobi> {
  @override
  Widget build(BuildContext context) {
    List mobile = [
      "mobicon/apple.png"
          "mobicon/moto.png"
          "mobicon/oppo.png"
          "mobicon/poco.png"
          "mobicon/realme.png"
          "mobicon/sams.png"
          "mobicon/vivo.png"
          "mobicon/xia.png"
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Mobiles"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "UNDER 10,000 ",
                          style: TextStyle(
                              fontFamily: 'Kenia',
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "UNDER 20,000",
                          style: TextStyle(
                              fontFamily: 'Kenia',
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Phones(),));
                },
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black12,
                            backgroundImage: AssetImage('mobo/apple.png'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black12,
                                backgroundImage: AssetImage("mobo/poco.png"),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black12,
                                    backgroundImage: AssetImage('mobo/inf.png'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/iqoo.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),

                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/noth.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/oppo.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/vive.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/xia.png'),
                                      ), SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/gpio.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/moto.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/realme.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/sa.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black12,
                                        backgroundImage: AssetImage('mobo/micro.png'),
                                      ),

                                      // SizedBox(
                                      //   width: 5,
                                      // ),CircleAvatar(
                                      //   radius: 30,
                                      //   backgroundColor: Colors.black12,
                                      //   backgroundImage: AssetImage('mobicon/xia.png'),
                                      // ),


                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
