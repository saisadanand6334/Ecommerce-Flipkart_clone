import 'package:flutter/material.dart';
 class Imao extends StatefulWidget {
   const Imao({Key? key}) : super(key: key);

   @override
   State<Imao> createState() => _ImaoState();
 }

 class _ImaoState extends State<Imao> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Center(child: Text('RATED')),
           leading: Icon(Icons.arrow_back),
         ),

         body: Container(
           height: double.maxFinite,
           width: double.maxFinite,
           child: Image.asset('iamagei/ratei.png'),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),

         ),


       ),
     );
   }
 }
