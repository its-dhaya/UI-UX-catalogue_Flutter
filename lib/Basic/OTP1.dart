import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/Basic/num1.dart';
import 'package:uiux/Basic/signup.dart';

class Otp1 extends StatefulWidget {
  const Otp1({super.key});

  @override
  State<Otp1> createState() => _Otp1State();
}

class _Otp1State extends State<Otp1> {
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  final FocusNode _otpFocus1 = FocusNode();
  final FocusNode _otpFocus2 = FocusNode();
  final FocusNode _otpFocus3 = FocusNode();
  final FocusNode _otpFocus4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Num1()), ModalRoute.withName('/'));
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
                      context, MaterialPageRoute(builder: (context) => Num1()));
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
                  SizedBox(height: 75),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          'Enter the 4-digit pin we have sent you to the \nregistered number',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildOtpField(_otpController1, _otpFocus1, _otpFocus2),
                        _buildOtpField(_otpController2, _otpFocus2, _otpFocus3),
                        _buildOtpField(_otpController3, _otpFocus3, _otpFocus4),
                        _buildOtpField(_otpController4, _otpFocus4, null),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle OTP verification
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Verify',
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
                  SizedBox(height: 100),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Didn't recevie the code ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Num1()));
                          },
                          child: Text(
                            'Resend it',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOtpField(TextEditingController controller, FocusNode currentFocus,
      FocusNode? nextFocus) {
    return Container(
      width: 50,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1 && nextFocus != null) {
            FocusScope.of(context).requestFocus(nextFocus);
          }
        },
      ),
    );
  }
}
