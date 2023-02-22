import 'package:flipkart_clonne/no.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(seconds: 4),
          () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Flip()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Image(image:  AssetImage(
              'images/fliiii1.png'),)

          ),
        ),

    );
  }
}
