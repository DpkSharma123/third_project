import 'package:flutter/material.dart';
import 'package:third_project/otppage.dart';
class Passwordreset extends StatefulWidget {
  const Passwordreset({super.key});

  @override
  State<Passwordreset> createState() => _Passwordreset();
}

class _Passwordreset extends State<Passwordreset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        leading:GestureDetector(
          onTap:(){
            Navigator.pop(context);
          },
            child: Image.asset('assets/Back-Navs.png'),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text('Password Reset',
              style:TextStyle(fontSize:24,fontWeight:FontWeight.w700),),
              Text('Please put your mobile number to reset your password',
                style:TextStyle(color:Color(0XFF9DB2BF),fontSize:16,fontWeight:FontWeight.w400),),
              SizedBox(height:20),
              Container(
                child:Row(
                  children: [
                  Image.asset('assets/sms.png'),
                    SizedBox(width:10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SMS',
                        style:TextStyle(fontSize:16,fontWeight:FontWeight.w700),),
                         TextFormField
                           (
                             decoration:InputDecoration(
                               border:InputBorder.none,
                               hintText:'+91 8********7',
                               hintStyle:TextStyle(color:Color(0XFF9E9E9E),
                               fontSize:12,fontWeight:FontWeight.w400),
                             ),
                         ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:10),
              Container(
               child: Row(
                  children: [
                    Image.asset('assets/Email_Box.png'),
                    SizedBox(width:10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                        style:TextStyle(fontSize:16,fontWeight:FontWeight.w700),),
                          TextFormField(
                            decoration:InputDecoration(
                              // border:OutlineInputBorder(),
                              border:InputBorder.none,
                              hintText:'joh*******@gmail.com',
                              hintStyle:TextStyle(color:Color(0XFF9E9E9E),
                                  fontSize:12,fontWeight:FontWeight.w400),
                            ),
        
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:30),
              Image.asset('assets/laptop1.png'),
              SizedBox(height:30),
              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor:Color(0XFF007AFF),
                  foregroundColor:Color(0XFFFFFFFF),
                  minimumSize:Size(350, 50),
                ),
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Otppage()),
                  );
                },
                child:Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
