import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Businesshome extends StatefulWidget {
  const Businesshome({super.key});

  @override
  State<Businesshome> createState() => _BusinesshomeState();
}

class _BusinesshomeState extends State<Businesshome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.home, color: Colors.white, size: 30),
        backgroundColor: Color(0xFF4D78EA),
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: FaIcon(FontAwesomeIcons.solidBell, color: Colors.white, size: 25),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 5),
              Text(
                'Total balance',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "\$200,000",
                style: GoogleFonts.oswald(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildGestureWithLabel(
                    context,
                    icon: FontAwesomeIcons.exchangeAlt,
                    label: 'Transfer',
                    onTap: () {
                      // Handle withdraw tap
                    },
                  ),
                  _buildGestureWithLabel(
                    context,
                    icon: FontAwesomeIcons.handHoldingUsd,
                    label: 'Deposit',
                    onTap: () {
                      // Handle deposit tap
                    },
                  ),
                  _buildGestureWithLabel(
                    context,
                    icon: FontAwesomeIcons.moneyBillTransfer,
                    label: 'Withdraw',
                    onTap: () {
                      // Handle transfer tap
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Total Spending',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFF4D78EA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'This week',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      textAlign: TextAlign.left,
                      "\$200,000",
                      style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGestureWithLabel(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return Column(
      children: [
        _buildGestureContainer(context, icon: icon, label: label, onTap: onTap),
        SizedBox(height: 10),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildGestureContainer(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF4D78EA),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF4D78EA).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, color: Colors.white, size: 25),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
