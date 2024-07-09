import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Buisnesssignup extends StatefulWidget {
  const Buisnesssignup({super.key});

  @override
  State<Buisnesssignup> createState() => _BuisnesssignupState();
}

class _BuisnesssignupState extends State<Buisnesssignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Embark Your IDEA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
      ),
      backgroundColor: Color(0xFF4D78EA),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: IconButton(icon:FaIcon(FontAwesomeIcons.caretLeft) ,onPressed: (){},color: Colors.white,iconSize: 30,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget> [
          SizedBox(height: 20,),
          Center(
            child: ClipOval(child: Image.asset('assets/images/Buisness1.jpeg',
            fit:BoxFit.cover,
            height: 354,
            width: 354,
            )
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Accept',style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 36),
              ),
              SizedBox(width: 10,),
              Text('Incoming',style:GoogleFonts.poppins(color: Colors.black,fontSize: 36,fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: 10,),
          Text('Multiple Source',style: GoogleFonts.poppins(color: Colors.black,fontSize: 36),),
          SizedBox(height: 20,),
          Center(child: Text('All you need is our support we create futures provide an easy path',style: GoogleFonts.poppins(color: Colors.grey.shade700,fontSize: 20),
          textAlign: TextAlign.center,
          ),
          ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:16,),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(color: Colors.white,fontSize: 36),
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
      )
    );
  }
}