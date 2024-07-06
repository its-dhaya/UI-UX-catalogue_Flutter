import 'package:flutter/material.dart';
import 'package:uiux/TopicBox.dart';
import 'package:uiux/sign1/signup.dart';

class Catalouge extends StatefulWidget {
  const Catalouge({super.key});

  @override
  State<Catalouge> createState() => _CatalougeState();
}

class _CatalougeState extends State<Catalouge> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
    return false;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(85),
          child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.grey.shade800,
            title: Row(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(  
                    'Catalogue',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          ),
                          ),
                  ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
            ),
            ),
        ),
        backgroundColor: Colors.grey.shade500,
        body:Container(
          child: Column(
            children: [
              SizedBox(height: 20),
                TopicBox(title: 'Signup UI', onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup1()));
                }),
                SizedBox(height: 10),
                TopicBox(title: 'OTP UI', onTap: (){} ),
                SizedBox(height: 10),
                TopicBox(title: 'Home UI', onTap: () {}),
                SizedBox(height: 10),
                TopicBox(title: 'Chat UI', onTap: () {}),
            ],
          ),
        )
      ),
    );
  }
}