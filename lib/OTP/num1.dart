import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/OTP/OTP1.dart';
import 'package:uiux/sign1/signup.dart';
import 'package:uiux/styleslist/otplist.dart';

class Num1 extends StatefulWidget {
  const Num1({super.key});

  @override
  State<Num1> createState() => _Num1State();
}

class _Num1State extends State<Num1> {
  String _selectedCountryCode = '+1'; // Default country code
  final List<String> _countryCodes = ['+1', '+91', '+44', '+61', '+81', '+49']; // List of country codes

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Otplist()));
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(top: 22),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Otplist()));
                },
                icon: FaIcon(
                  FontAwesomeIcons.caretLeft,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'Basic style',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Enter your number for the OTP verification',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.transparent),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedCountryCode,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedCountryCode = newValue!;
                                });
                              },
                              items: _countryCodes
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: TextStyle(fontSize: 20)),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 20),
                              hintText: 'Enter your number',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "We'll send you the 4-digit code for the entered number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle OTP verification
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp1()));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Send OTP',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
