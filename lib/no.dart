import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart_clonne/accoou.dart';
import 'package:flipkart_clonne/cart.dart';
import 'package:flipkart_clonne/rateing.dart';
import 'package:flipkart_clonne/sett.dart';
import 'package:flutter/material.dart';
import 'categ.dart';

import 'notific.dart';

class Flip extends StatefulWidget {
  const Flip({Key? key}) : super(key: key);

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  int selectedindex = 0;

  List imo = [
    'imagesf/appl.webp',
    'imagesf/elec.webp',
    'imagesf/fas.webp',
    'imagesf/gro.webp',
    'imagesf/home.webp',
    'imagesf/mob.webp',
    'imagesf/off.webp',
    'imagesf/toy.webp',
    'imagesf/trv.webp',
    'imagesf/two.webp'
  ];
  List image = [
    'images/fli.jpeg',
    'images/fli2.jpeg',
    'images/fli3.jpeg',
    'images/fli4.jpeg',
    'images/flli.jpeg'
  ];
  List offer = [
    "Up to 70% offer",
    "Up to 40% offer",
    "Up to 60% offer",
    "Up to 50% offer",
    "Up to 30% offer",
    "Up to 70% offer",
    "Up to 65% offer",
    "Up to 40% offer"
  ];
  List detail = [
    "Beauty",
    "Electronics",
    "Fashion",
    "Gym",
    "Furniture",
    "Essentials",
    "Mobile",
    'Shoe'
  ];
  List offimg = [
    'images/bea.jpeg',
    'images/ele.jpeg',
    'images/fas.jpeg',
    'images/fit.jpeg',
    'images/hom.jpeg',
    'images/hou.jpeg',
    'images/pho.jpeg',
    'images/shoe.webp'
  ];

  List s = [
    'Container1',
    'Container2',
    'Container3',
    'Container4',
    'Container5',
    'container6',
    ' container7',
    'container8'
  ];
  List p = [
    'images/cam.webp',
    'images/fitn.webp',
    'images/shoe.webp',
    'images/wat.webp',
    'images/men.webp',
    'images/clo.webp'
  ];
  List v = ['Camera', 'Fitness', 'Shoe', 'Watch', 'Dress', 'Clock'];
  List iconis = [' ', 'Icons.confirmation_num'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4E2EE),
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.blue,
        title: Center(),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Center(
                  child: Icon(
                Icons.shopping_cart_outlined,
                size: 100,
              )),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Language'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Settngs()));
                  },child: Text('Settings')),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.star_rate_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rating(),));
                  },
                      child: Text('Rate Us')),
                ],
              ),
              tileColor: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ),
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
                        "Flipkart",
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
                        "Grocery",
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
            Container(
              height: 50,
              width: double.maxFinite,
              color: Color(0xffF4E2EE),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
              ),
            ),
            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('imagesf/elec.webp'))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Electricals',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('imagesf/appl.webp'))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Appliance',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('imagesf/fas.webp'))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Fashion',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('imagesf/gro.webp'))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Groceries',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('imagesf/mob.webp'))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Mobiles',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('imagesf/off.webp'),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Offers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('imagesf/toy.webp'),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Toys',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: image
                    .map((item) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(item), fit: BoxFit.fill)),
                        ))
                    .toList(),
                options: CarouselOptions(autoPlay: true, height: 200)),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.supervised_user_circle_outlined,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                          child: Icon(
                            Icons.confirmation_num,
                            size: 40,
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black12,
                              child: Icon(
                                Icons.stars_outlined,
                                size: 45,
                                color: Colors.purple,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.credit_card,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.people_alt_outlined,
                                    size: 40,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.play_circle_rounded,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.volume_up_rounded,
                                    size: 40,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.camera_alt_rounded,
                                    size: 45,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.local_fire_department_outlined,
                                    size: 45,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.sell_outlined,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.games_outlined,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.price_change_outlined,
                                    size: 40,
                                    color: Colors.purple,
                                  ),
                                ),
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
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                    height: 30,
                    color: Colors.black,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(p[index], height: 80),
                          ),
                          Text(
                            v[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ]));
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: s.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 40,
                    width: 40,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage(offimg[index]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          detail[index],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          offer[index],
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Flip()));
                },
                child: Icon(Icons.home_filled)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categ()));
                },
                child: Icon(Icons.category)),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Notifi(),
                        ));
                  },
                  child: Icon(Icons.notifications)),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
                  child: Icon(Icons.account_circle_outlined)),
              label: 'Account',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
              },
                  child: Icon(Icons.shopping_cart_rounded)),
              label: 'Cart',
              backgroundColor: Colors.cyan),
        ],
      ),
    );
  }
}
