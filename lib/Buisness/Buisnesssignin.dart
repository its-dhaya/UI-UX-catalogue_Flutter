import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiux/Buisness/Buisnessacc.dart';
import 'package:uiux/Buisness/Buisnesssignup.dart';

class Buisnesssignin extends StatefulWidget {
  const Buisnesssignin({super.key});

  @override
  State<Buisnesssignin> createState() => _BuisnesssigninState();
}

class _BuisnesssigninState extends State<Buisnesssignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xFF4D78EA),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.caretLeft),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Buisnesssignup()));
          },
          color: Colors.white,
          iconSize: 30,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/Buisness2.jpeg',
                  fit: BoxFit.cover,
                  height: 250,
                  width: 250,
                ),
              ),
            ),
            SizedBox(height: 2),
            Column(
              children: [
                Text(
                  'Make your account to continue',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        hintText: 'Enter your full name',
                        hintStyle: GoogleFonts.inter(
                            fontSize: 17, color: Colors.grey.shade600)),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.inter(
                            fontSize: 17, color: Colors.grey.shade600)),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.inter(
                            fontSize: 17, color: Colors.grey.shade600)),
                  ),
                ),
                SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:45,),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Sign up',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(color: Colors.white,fontSize: 20),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),  
                          backgroundColor: Color(0xFF4D78EA),
                        ),
                      ),
                    ),
         
              ],
            ),
                  SizedBox(height: 20,),
                    Text('Or',style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Already have an account ?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(width: 2,),
                        TextButton(onPressed: (){
                        }, child: Text('Sign in',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                      ],
                    ),
                    Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Buisnessacc()),
        );
      },
      child: Text(
        'Next page',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
    SizedBox(width: 3),
    IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Buisnessacc()),
        );
      },
      icon: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.blue),
    ),
  ],
)
          ],
        ),
      ),
    );
  }
}
