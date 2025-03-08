import 'package:flutter/material.dart';
import 'package:third_project/loginpage.dart';
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _Firstscreen();
}

class _Firstscreen extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

      ),
      body:Column(

        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         GestureDetector(
           onTap:(){
             Navigator.push(
                 context,
                 MaterialPageRoute(builder:(context)=>Loginpage()),
             );
           },
           child: Center(
               child: Image.asset('assets/yna.png')
           ),
         ),
        ],
      ),
    );
  }
}
