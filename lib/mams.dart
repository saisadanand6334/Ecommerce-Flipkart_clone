import 'package:flutter/material.dart';

class Mama extends StatefulWidget {
  const Mama({Key? key}) : super(key: key);

  @override
  State<Mama> createState() => _MamaState();
}

class _MamaState extends State<Mama> {
  @override
  Widget build(BuildContext context) {
    List img = [
      "mams/mama.webp",
      "mams/mamafou.webp",
      "mams/mamage.webp",
      "mams/mamagl.webp",
      "mams/mamaoi.webp",
      "mams/mamasc.webp"
    ];
    List tex = [
      "Naturals",
      "Foundation",
      "Sunscreen",
      "Aqua Glow",
      "Hair oil",
      "Face scrub"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("MAMA EARTH"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: img.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(img[index]))),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Text(
                                tex[index],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),

    );
  }
}
