import 'package:flipkart_clonne/provider.dart';
import 'package:flipkart_clonne/splas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Flipkart());
}

class Flipkart extends StatelessWidget {
  const Flipkart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(create: (context)=>Providerfunction(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Splash(),



        ),
      );
  }
}