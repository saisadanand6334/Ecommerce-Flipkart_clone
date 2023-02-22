import 'package:flutter/material.dart';

class Lakeme extends StatefulWidget {
  const Lakeme({Key? key}) : super(key: key);

  @override
  State<Lakeme> createState() => _LakemeState();
}

class _LakemeState extends State<Lakeme> {
  @override
  Widget build(BuildContext context) {
    List btph = [
      "lakme/lak.webp",
      "lakme/lakmeblur.webp"


    ];
    List btdet = [
      "Sun expert",
      "PRIMER"

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("LAKME"),
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
                  itemCount: btph.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              image:
                              DecorationImage(image: AssetImage(btph[index]))),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Text(
                                btdet[index],
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