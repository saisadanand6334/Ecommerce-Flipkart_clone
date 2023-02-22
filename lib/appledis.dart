import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail1 extends StatelessWidget {
  const Detail1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                height: 400,
                width: double.maxFinite,

                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('ipoimg/ip13w.webp'),fit: BoxFit.cover)),
              ),
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,),

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("View in 360",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Check how this looks from all angles"),
                  ),

                ],
              ),


            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Select Varient",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(color: Colors.black12,
                height: 1,
                width: double.maxFinite,
              ),
            ),

            Container(
              height: 50,
              width: double.maxFinite,

              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,

                        child: Row(
                          children: [
                            Icon(Icons.color_lens,color: Colors.blue,),
                            Text("Color:"),
                            Text("Shadow Gray",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2 more"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.black12,
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,

              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,

                        child: Row(
                          children: [
                            Icon(Icons.memory,color: Colors.blue,),
                            Text("Storage:"),
                            Text("32 GB",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2 more"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.black12,

              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,

              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,

                        child: Row(
                          children: [
                            Icon(Icons.storage,color: Colors.blue,),
                            Text("RAM:"),
                            Text("3 GB",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: double.maxFinite,
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2 more"),
                            Icon(Icons.arrow_forward_ios,),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),

            ),
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/phoneadv.jpg'),fit: BoxFit.cover)),

            ),
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/phoneadv2.jpg'),fit: BoxFit.cover)),

            )



          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add to cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),)

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              color: Colors.orange,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Buy now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),)
                ],
              ),
            ),
          ),
        ],
      ),


    );
  }
}