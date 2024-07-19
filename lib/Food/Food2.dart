import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiux/Food/Food1.dart';
import 'package:uiux/Food/Food3.dart';

class Food2 extends StatefulWidget {
  const Food2({super.key});

  @override
  State<Food2> createState() => _Food2State();
}

class _Food2State extends State<Food2> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Food1()));
                  },
                  icon: FaIcon(FontAwesomeIcons.caretLeft, color: Colors.black, size: 30,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              child: FaIcon(
                FontAwesomeIcons.userShield,
                color: Colors.black,
                size: 100,
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Text(
                'Verify Your Phone Number',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Enter your OTP here',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOtpField(_controller1, _focusNode1),
                  _buildOtpField(_controller2, _focusNode2),
                  _buildOtpField(_controller3, _focusNode3),
                  _buildOtpField(_controller4, _focusNode4),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Didn't you receive any code?",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 30,),
            TextButton(onPressed:() {},
             child: Text('Resend new code',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.green.shade900,fontSize: 20),)),
            SizedBox(height: 150,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    // Add the action for the next page here
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Food3()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Next page',
                      style: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 3),
                IconButton(
                  onPressed: () {
                    // Add the action for the next page here
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Food3()));
                  },
                  icon: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.green.shade800),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpField(TextEditingController controller, FocusNode focusNode) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide(color: Colors.black, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.black, width: 2.0),
          ),
        ),
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        onChanged: (value) {
          if (value.length == 1) {
            focusNode.nextFocus();
          }
        },
      ),
    );
  }
}
