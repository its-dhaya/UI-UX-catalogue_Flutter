import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/Basic/OTP1.dart';
import 'package:uiux/Basic/num1.dart';
import 'package:uiux/TopicBox.dart';
import 'package:uiux/catalouge.dart';
import 'package:uiux/Basic/signup.dart';

class Otplist extends StatefulWidget {
  const Otplist({super.key});

  @override
  State<Otplist> createState() => _OtplistState();
}

class _OtplistState extends State<Otplist> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Catalouge()), ModalRoute.withName('/'));
        return false;
      },
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(85),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: IconButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Catalouge()));
              },
              icon: FaIcon(FontAwesomeIcons.caretLeft,color: Colors.white,size: 30,),),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text('OTP Styles',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
            ),
          ),
          
        ),
        backgroundColor: Colors.grey.shade500,
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              TopicBox(onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Num1()));
              }, title: 'Basic Style')
            ],
          ),
        ),
      ),
    );
  }
}