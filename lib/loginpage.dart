import 'package:flutter/material.dart';
import 'package:third_project/passwordreset.dart';
import 'package:third_project/signuppage.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  int tabIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30,top:70),
              child: Image.asset('assets/yna.png',width:150,height:100),
            ),
              SizedBox(height:30),
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
              child: Text('Login',style:TextStyle(fontSize:24,
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
              child: TextFormField(
                decoration:InputDecoration(
                  border:InputBorder.none,
                  fillColor:Color(0XFFF7F8F8),
                  filled:true,
                  hintText:('Email Address / Mobile number'),
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
            Center(
              child: GestureDetector(
                onTap:(){
                  Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context)=>Passwordreset()),
                  );
                },
                child: Text('Forgot your password?',
                  style:TextStyle(color:Color(0XFF007AFF),fontSize:12,fontWeight:FontWeight.w400),),
              ),
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
                child: Text('Login',
                  style:TextStyle(fontSize:17,fontWeight:FontWeight.w700),),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style:TextStyle(color:Color(0XFF909090),fontSize:16,fontWeight:FontWeight.w600),),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Signuppage()),
                    );
                  },
                  child: Text('Sign Up',
                    style:TextStyle(color:Color(0XFFF007AFF),fontSize:16,fontWeight:FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height:10),
            Center(
              child: Text('OR',
                style:TextStyle(fontSize:16,fontWeight:FontWeight.w500),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/google.png'),
                SizedBox(width:5),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Signuppage()),
                    );
                  },
                  child: Text('Sign In with Google',
                    style:TextStyle(color:Color(0XFF909090),fontSize:18,fontWeight:FontWeight.w600),),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
      }


