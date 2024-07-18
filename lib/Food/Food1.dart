import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiux/catalouge.dart';

class Food1 extends StatefulWidget {
const Food1({super.key});

  @override
  State<Food1> createState() => _Food1State();
}

class _Food1State extends State<Food1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()  async{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Catalouge()));
        return true; // Prevent popping the screen
      },
      child: Scaffold(
        backgroundColor: Colors.green.shade200,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 60,),
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Food1.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "What's on your mind?",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    'Good food waits for you',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        'Enter your details to begin',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white, width: 5),
                      ),
                      hintText: 'Name',
                      labelText: 'Enter your Full Name',
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white, width: 5),
                      ),
                      hintText: 'Number',
                      labelText: 'Enter your Phone Number',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/Flag.png', // Add your flag image path here
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 8,), // Space between flag and +91
                            Text('+91', style: TextStyle(fontSize: 16)),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 100),
                  child: ElevatedButton(
                  onPressed: (){},
                  child:SizedBox(
                    width: double.infinity,
                    child: Text('Get the OTP',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Colors.white
                    ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: Colors.green.shade800
                  ),
                  ),
                ),
                SizedBox(height: 12,),
        Row(
        mainAxisSize: MainAxisSize.min,
        children: [
      GestureDetector(
        onTap: () {
        },
        child: Text(
          'Next page',
          style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(width: 3),
      IconButton(
        onPressed: () {
      
        },
        icon: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.green.shade800),
      ),
        ],
      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
