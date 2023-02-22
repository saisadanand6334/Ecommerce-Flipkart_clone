import 'package:flipkart_clonne/appledis.dart';
import 'package:flipkart_clonne/cart.dart';
import 'package:flipkart_clonne/mobdet.dart';
import 'package:flipkart_clonne/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Phones extends StatelessWidget {
  const Phones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List image = [
      'ipoimg/ip11.webp',
      'ipoimg/ip12.webp',
      'ipoimg/ip12c.webp',
      'ipoimg/ip13w.webp',
      'ipoimg/ip14.webp',
      'ipoimg/ip14pr.webp',
      'ipoimg/ip14prma.webp',
      'ipoimg/ip14w.webp',
      'ipoimg/ip14w.webp'
    ];
    List tx = [
      "APPLE iPhone 11 ",
      "APPLE iPhone 11",
      "APPLE iPhone 12 W",
      "APPLE iPhone 12",
      "APPLE iPhone 13 GREEN",
      "APPLE iPhone 13 WHITE",
      "APPLE iPhone 14 ",
      "APPLE iPhone 14 Pro ",
      "APPLE iPhone 14 Pro Max",
      "APPLE iPhone 14 WHITE",
    ];
    List nav = [];

    final obj = Provider.of<Providerfunction>(context);
    final mylist = obj.words;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: double.maxFinite,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Flipkart",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              "Explore",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                            Text(
                              "Plus",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.yellow),
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cart()),
                          );
                        },
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detail1()),
                );
              },
              child: Container(
                height: 200,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("ipoimg/ip13g.webp"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Similar Products",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
              ),
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: Colors.white,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            obj.toggleFavorite(tx[index], image[index]);
                          },
                          icon: obj.symbol(tx[index])
                              ? Icon(Icons.favorite, color: Colors.red)
                              : Icon(
                                  Icons.favorite_outline,
                                ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Phonedetailse1()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      Text(tx[index]),
                      Text("1,34,000"),
                      Text("36% off"),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
