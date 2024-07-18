import 'package:flutter/material.dart';
import 'package:uiux/Buisness/Buisnesssignup.dart';
import 'package:uiux/Food/Food1.dart';
import 'package:uiux/TopicBox.dart';
import 'package:uiux/Basic/signup.dart';
import 'package:uiux/styleslist/otplist.dart';
import 'package:uiux/styleslist/signlist.dart';

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
    return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(85),
          child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.grey.shade700,
            title:const Row(
              children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 25),
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
        body:SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50),
                  TopicBox(title: 'Basic UI', onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup1()));
                  }),
                  SizedBox(height: 15),
                  TopicBox(title: 'Business UI', onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Buisnesssignup()));
                  } ),
                  SizedBox(height: 15),
                  TopicBox(title: 'Food app UI', onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Food1()));
                  }),
                  SizedBox(height: 15),
                  TopicBox(title: 'Chat UI', onTap: () {}),
              ],
            ),
          ),
        )
      ),
    );
  }
}