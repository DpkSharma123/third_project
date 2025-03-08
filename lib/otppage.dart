import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:third_project/createpassword.dart';
class Otppage extends StatefulWidget {
  const Otppage({super.key});

  @override
  State<Otppage> createState() => _Otppage();
}

class _Otppage extends State<Otppage> {
  final TextEditingController pinController=TextEditingController();
  final defaultPinTheme=PinTheme(
    width:56,
    height:56,
    textStyle:TextStyle(fontSize:22,color:Colors.black),
    decoration:BoxDecoration(
      border:Border.all(color:Colors.black),
      borderRadius:BorderRadius.circular(12),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:GestureDetector(
          onTap:(){
            Navigator.pop(context);
          },
            child: Image.asset('assets/Back-Navs.png')
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text('Check your Phone ',
            style:TextStyle(fontSize:24,fontWeight:FontWeight.w700)),
            Text('Please put the 4 digits sent to you',
            style:TextStyle(color:Color(0XFF9DB2BF),fontSize:16,fontWeight:FontWeight.w700),),
            SizedBox(height:50),
            Center(
              child: Pinput(
                controller:pinController,
                defaultPinTheme:defaultPinTheme,
                validator:(value){
                  return value=='2222'?null:'Pin is incorrect';
                },
                onCompleted:(pin){
                  debugPrint('onComplete:$pin');
                  },
                onChanged:(value){
                  debugPrint('onChanged:$value');
                },
              ),
            ),
            SizedBox(height:50),
            Image.asset('assets/otp image.png'),
            SizedBox(height:100),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor:Color(0XFF007AFF),
                  foregroundColor:Color(0XFFFFFFFF),
                  minimumSize:Size(300, 50),
                ),
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Createpassword()),
                    );
                  },
                child:Text('Submit'),

                  ),
            ),
          ],

        ),
      ),
    );
  }
}
