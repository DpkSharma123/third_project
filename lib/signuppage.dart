import 'package:flutter/material.dart';
class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _Signuppage();
}

class _Signuppage extends State<Signuppage> {
    int tabIndex=0;
  List<bool> isChecked=[false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:30,top:70),
            child: Image.asset('assets/yna.png',width:150,height:100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap:(){
                  setState(() {
                    tabIndex=0;
                  });
                },
                child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:50),
                    decoration:BoxDecoration(
                      color:tabIndex==0?Color(0XFF007AFF):Color(0XFFFBFBFB),
                      borderRadius:BorderRadius.circular(10),

                    ),
                    child: Text('User',
                      style:TextStyle(color:tabIndex==0?Color(0XFFFFFFFF):Color(0XFF757575),
                          fontSize:14,fontWeight:FontWeight.w500),)
                ),
              ),
              GestureDetector(
                onTap:(){
                  setState(() {
                    tabIndex=1;
                  });
                },
                child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:50),
                    decoration:BoxDecoration(
                      color:tabIndex==1?Color(0XFF007AFF):Color(0XFFFBFBFB),
                      borderRadius:BorderRadius.circular(10),

                    ),
                    child: Text('Club',
                      style:TextStyle(color:tabIndex==1?Color(0XFFFFFFFF):Color(0XFF757575),
                          fontSize:14,fontWeight:FontWeight.w500),)
                ),
              ),
            ],
          ),
          SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.only(left:20,top:10),
            child: Text('Sign Up',style:TextStyle(fontSize:24,
                color:Color(0XFF000000),
                fontWeight:FontWeight.w700
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20,top:10),
            child: Text('Enter your email and password',
              style:TextStyle(color:Color(0XFF9DB2BF),
                  fontSize:16,fontWeight:FontWeight.w400),),
          ),
          Container(
            margin:EdgeInsets.symmetric(vertical:10,horizontal:10),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(40),
            ),
            child:TextFormField(
              decoration:InputDecoration(
                border:InputBorder.none,
                fillColor:Color(0XFFF7F8F8),
                filled:true,
                hintText:'Full Name',
                hintStyle:TextStyle(color:Color(0XFFADA4A5),
                    fontSize:14,fontWeight:FontWeight.w400),
                prefixIcon:Image.asset('assets/profile.png'),
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            margin:EdgeInsets.symmetric(vertical:5,horizontal:10),
            decoration:BoxDecoration(
              // border:Border.all(color:Colors.red,width:2),
              borderRadius:BorderRadius.circular(40),
            ),
            child: TextFormField(
              keyboardType:TextInputType.number,
              obscureText:true,
              decoration:InputDecoration(
                border:InputBorder.none,
                fillColor:Color(0XFFF7F8F8),
                filled:true,
                hintText:('Email address'),
                hintStyle:TextStyle(color:Color(0XFFADA4A5),
                    fontSize:14,fontWeight:FontWeight.w400),
                prefixIcon:Image.asset('assets/Message.png'),
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            margin:EdgeInsets.symmetric(vertical:5,horizontal:10),
            decoration:BoxDecoration(
              // border:Border.all(color:Colors.red,width:2),
              borderRadius:BorderRadius.circular(40),
            ),
            child: TextFormField(
              keyboardType:TextInputType.number,
              obscureText:true,
              decoration:InputDecoration(
                border:InputBorder.none,
                fillColor:Color(0XFFF7F8F8),
                filled:true,
                hintText:('Password'),
                hintStyle:TextStyle(color:Color(0XFFADA4A5),
                    fontSize:14,fontWeight:FontWeight.w400),
                prefixIcon:Image.asset('assets/Lock.png'),
                suffixIcon:Image.asset('assets/Hide-Password.png'),
              ),
            ),
          ),
          SizedBox(height:40),
          Row(
            children: [
              GestureDetector(
                onTap:(){
                  setState(() {
                    isChecked[0]=!isChecked[0];
                  });
                },
                child: Container(
                  width:30,
                  height:30,
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isChecked[0]?Icons.check_circle:Icons.radio_button_unchecked,
                    color:isChecked[0]?Color(0XFF007AFF):Colors.black,
                  ),
                ),
              ),
              RichText(
                text:TextSpan(
                  children:[
                    TextSpan(
                      text:'I agree to the OKSA',
                      style:TextStyle(color:Color(0XFF909090),fontSize:14,
                          fontWeight:FontWeight.w400),
                    ),
                    TextSpan(
                      text:' Terms of Service ',
                      style:TextStyle(color:Color(0XFF007AFF),fontSize:14,
                          fontWeight:FontWeight.w400),
                    ),
                    TextSpan(
                      text:'and \n',
                      style:TextStyle(color:Color(0XFF909090),fontSize:14,
                          fontWeight:FontWeight.w400),
                    ),
                    TextSpan(
                      text:' Privacy Policy',
                      style:TextStyle(color:Color(0XFF007AFF),fontSize:14,
                          fontWeight:FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20,horizontal:30),
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Color(0XFF007AFF),
                foregroundColor:Color(0XFFFFFFFF),
                minimumSize:Size(300, 50),
              ),
              onPressed:(){

              },
              child:Text('Sign Up'),
            ),
          ),
          Center(
            child: RichText(
              text:TextSpan(
                children:[
                  TextSpan(
                    text:'Alrady have an account?',
                    style:TextStyle(color:Color(0XFF909090),fontSize:16,
                        fontWeight:FontWeight.w500),
                  ),
                  TextSpan(
                    text:'Login',
                    style:TextStyle(color:Color(0XFF007AFF),fontSize:16,
                        fontWeight:FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
