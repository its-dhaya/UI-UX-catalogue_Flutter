import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/TopicBox.dart';
import 'package:uiux/catalouge.dart';
import 'package:uiux/sign1/signup.dart';

class Signlist extends StatefulWidget {
  const Signlist({super.key});

  @override
  State<Signlist> createState() => _SignlistState();
}

class _SignlistState extends State<Signlist> {
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
              child: Text('Sign up/in Styles',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
            ),
          ),
          
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              TopicBox(onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Signup1()));
              }, title: 'Basic Style')
            ],
          ),
        ),
      ),
    );
  }
}