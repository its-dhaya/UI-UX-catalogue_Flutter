import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiux/sign1/signin.dart';
import 'package:uiux/sign1/signup.dart';

class Signin1 extends StatefulWidget {
  const Signin1({super.key});

  @override
  State<Signin1> createState() => _Signin1State();
}

class _Signin1State extends State<Signin1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Signup1()));
            }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Padding(
              padding:  EdgeInsets.only(top: 25),
              child: Text('Basic style',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
            ),),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 75),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'SignIn',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(width: 10), // Optional spacing between text and icon
                    Icon(
                      Icons.apple,
                      size: 40,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Reduced vertical padding
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Reduced vertical padding
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: 'Enter your password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Signin',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 25),
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an account ?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup1()));
                    }, child: Text('Sign up',style: TextStyle(fontSize: 16,color: Colors.blue),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
