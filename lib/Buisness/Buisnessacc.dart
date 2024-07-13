import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiux/Buisness/Buisneeshome.dart';
import 'package:uiux/Buisness/Buisnesssignin.dart';

class Buisnessacc extends StatefulWidget {
  const Buisnessacc({super.key});

  @override
  State<Buisnessacc> createState() => _BuisnessaccState();
}

class _BuisnessaccState extends State<Buisnessacc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Color(0xFF4D78EA),
      automaticallyImplyLeading: false,
      leading: IconButton(icon: FaIcon(FontAwesomeIcons.caretLeft,),onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Buisnesssignin()));
      },
      color: Colors.white,
      iconSize: 30,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children:<Widget> [
            SizedBox(height: 10,),
            Center(
              child: Image.asset('assets/images/Buisness3.jpeg',
              fit: BoxFit.cover,
              height: 250,
              width: 250,),
            
            ),
            SizedBox(height: 5,),
            Column(
              children: [
                Container(
                  child:Text('Sign in to your account',
                  style:GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  ) ,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Buisnesssignin()));
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Sign in',
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
                      SizedBox(height: 5,),
                      Text('Or',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:45,),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Buisnesssignin()));
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min ,
                              children: [
                                FaIcon(FontAwesomeIcons.apple,color: Colors.white,),
                                SizedBox(width: 8,),
                                Text(
                                  'Continue with apple' , 
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),  
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                       SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:45,),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Buisnesssignin()));
                          },
                          child:  SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min ,
                              children: [
                                SizedBox(
                                  height: 24,width: 30,
                                  child: Image.asset('assets/images/google.png')),
                                SizedBox(width: 8,),
                                Text(
                                  'Continue with Google' , 
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(color: Colors.black,fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),  
                            backgroundColor: Colors.grey.shade300,
                          ),
                        ),
                      ),
                      Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Businesshome()));
                },
                child: Text(
          'Next page',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Businesshome()));
                },
                icon: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.blue),
              ),
            ],
          )
                    
              ],
            )
          ],),
        ),
      ),

    );
  }
}