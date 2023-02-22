import 'package:flipkart_clonne/beauty.dart';
import 'package:flipkart_clonne/mobile.dart';
import 'package:flutter/material.dart';

class Categ extends StatefulWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  State<Categ> createState() => _CategState();
}

class _CategState extends State<Categ> {
  List imo = [
    'imagesf/appl.webp',
    'imagesf/mob.webp',
    'imagesf/elec.webp',
    'imagesf/fas.webp',
    'imagesf/gro.webp',
    'imagesf/home.webp',
    'imagesf/off.webp',
    'imagesf/toy.webp',
    'imagesf/trv.webp',
    'images/shoe.webp',
    'imagesf/inst.webp',
    "imagesf/bea.jpeg",
    "imagesf/booka.webp",
    'imagesf/gym.webp',
    "images/cam.webp"
  ];
  List detail = [
    "Beauty",
    "Mobile",
    "Electronics",
    "Fashion",
    "Gym",
    "Furniture",
    "Essentials",
    'Shoe',
    'Travel',
    'Shoe',
    "Instruments",
    'Beauty products',
    "Books",
    "Gym",
    "Camera"
  ];
  List s = [
    'Container1',
    'Container2',
    'Container3',
    'Container4',
    'Container5',
    'container6',
    'container7',
    'container8',
    'container9',
    'container10',
    'Container11',
    'Container12',
    'Container13',
    'Container14',
    "container15"

  ];
  List poy =  [
    Beauti(),
    Mobi(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                child: Text(
                  'All Categeories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.mic)
                    ],
                  ),
                ),
              )
            ],
          ),
        )



      ),
      body: GridView.builder(shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemCount:s.length ,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => poy[index],));
            },
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(imo[index]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      detail[index],
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),

                  ],
                ),
              ),
            ),
          );

        },),



    );
  }
}
