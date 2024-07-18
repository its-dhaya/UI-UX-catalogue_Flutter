import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/catalouge.dart';
import 'package:uiux/Basic/signin.dart';
import 'package:uiux/styleslist/signlist.dart';

class Signup1 extends StatefulWidget {
  const Signup1({super.key});

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate back to Catalogue when the back button is pressed
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Catalouge()),
          ModalRoute.withName('/'),
        );
        return true; // Allow the back button press
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            leading: Padding(
              padding:EdgeInsets.only(top: 22),
              child: IconButton(
                onPressed: () {
                  // Navigate back to Catalogue when the back button in AppBar is pressed
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Catalouge()),
                    ModalRoute.withName('/'),
                  );
                },
                icon: FaIcon(FontAwesomeIcons.caretLeft, color: Colors.white,size: 30,),
              ),
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Basic style',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Signup',
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
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Reduced vertical padding
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Reduced vertical padding
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
                        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Reduced vertical padding
                    child: TextField(
                      keyboardType: TextInputType.number,
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
                        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Signup',
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ],
                    
                  ),
            Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin1()));
                },
                child: Text(
          'Next page',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin1()));
                },
                icon: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.blue),
              ),
            ],
          )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
