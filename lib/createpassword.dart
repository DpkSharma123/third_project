import 'package:flutter/material.dart';
import 'package:third_project/mappage.dart';
class Createpassword extends StatefulWidget {
  const Createpassword({super.key});

  @override
  State<Createpassword> createState() => _Createpassword();
}

class _Createpassword extends State<Createpassword> {
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text('Create New Password',
              style:TextStyle(fontSize:24,fontWeight:FontWeight.w700),),
              Text('Your new password must be different from previous used passwords.',
              style:TextStyle(fontSize:16,fontWeight:FontWeight.w400),),
              SizedBox(height:20),
              TextFormField(
                decoration:InputDecoration(
                  // border:OutlineInputBorder(
                  //
                  // ),
                  border:InputBorder.none,
                  fillColor:Color(0XFFF7F8F8),
                  filled:true,
                  hintText:'New Password',
                  hintStyle:TextStyle(color:Color(0XFFADA4A5),fontSize:14,fontWeight:FontWeight.w400),
                  prefixIcon:Image.asset('assets/Lock.png'),
                  suffixIcon:Image.asset('assets/Hide-Password.png'),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                decoration:InputDecoration(
                  // border:OutlineInputBorder(
                  //
                  // ),
                  border:InputBorder.none,
                  fillColor:Color(0XFFF7F8F8),
                  filled:true,
                  hintText:'Confirm Password',
                  hintStyle:TextStyle(color:Color(0XFFADA4A5),fontSize:14,fontWeight:FontWeight.w400),
                  prefixIcon:Image.asset('assets/Lock.png'),
                  suffixIcon:Image.asset('assets/Hide-Password.png'),
                ),
              ),
              SizedBox(height:300),
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Color(0XFF007AFF),
                    foregroundColor:Color(0XFFFFFFFF),
                    minimumSize:Size(300, 50),
                  ),
                  onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Mappage()),

                  );
                  },
                  child:Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
