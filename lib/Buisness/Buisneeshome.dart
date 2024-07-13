import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class BusinessHome extends StatefulWidget {
  const BusinessHome({super.key});

  @override
  State<BusinessHome> createState() => _BusinessHomeState();
}

class _BusinessHomeState extends State<BusinessHome> {
  int _selectedIndex = 0; // Track the selected index for bottom navigation

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
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
            Align(
              alignment: Alignment.center,
              child: Text(
                '\$200,000',
                style: GoogleFonts.oswald(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
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
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Total Spending',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF4D78EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'This week',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '\$200,000',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: BusinessBarChart(),
            ),
            SizedBox(height: 20), // Space before the transactions
            Text(
              'Latest Transactions',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Space after the title
            // List of transactions
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionItem('Deposit: \$5000', DateTime.now().subtract(Duration(days: 1))),
                  _buildTransactionItem('Withdrawal: \$2000', DateTime.now().subtract(Duration(days: 2))),
                  _buildTransactionItem('Transfer: \$3000', DateTime.now().subtract(Duration(days: 3))),
                  _buildTransactionItem('Deposit: \$1500', DateTime.now().subtract(Duration(days: 4))),
                  _buildTransactionItem('Transfer: \$2500', DateTime.now().subtract(Duration(days: 5))),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            backgroundColor: Color(0xFF4D78EA),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: Colors.white),
            label: 'Cards',
            backgroundColor: Color(0xFF4D78EA),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up, color: Colors.white),
            label: 'Stocks',
            backgroundColor: Color(0xFF4D78EA),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.white),
            label: 'Account',
            backgroundColor: Color(0xFF4D78EA),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xFF4D78EA),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildTransactionItem(String transaction, DateTime date) {
    return ListTile(
      title: Text(
        transaction,
        style: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
      ),
      subtitle: Text(
        '${date.day}/${date.month}/${date.year}',
        style: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
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
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _buildGestureContainer(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF4D78EA),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF4D78EA).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, color: Colors.white, size: 20),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class BusinessBarChart extends StatelessWidget {
  final List<BarChartGroupData> barGroups = List.generate(7, (index) {
    return BarChartGroupData(x: index, barRods: [
      BarChartRodData(
        toY: Random().nextDouble() * 5, // Random value for bar height
        color: Color(0xFF4D78EA),
      ),
    ]);
  });

  BusinessBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: barGroups,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                String text;
                switch (value.toInt()) {
                  case 0:
                    text = 'Mon';
                    break;
                  case 1:
                    text = 'Tue';
                    break;
                  case 2:
                    text = 'Wed';
                    break;
                  case 3:
                    text = 'Thu';
                    break;
                  case 4:
                    text = 'Fri';
                    break;
                  case 5:
                    text = 'Sat';
                    break;
                  case 6:
                    text = 'Sun';
                    break;
                  default:
                    return Container(); // Return empty for out-of-range values
                }
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 8.0,
                  child: Text(text),
                );
              },
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false), // Hide top titles
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false), // Hide right titles
          ),
        ),
        borderData: FlBorderData(
          show: false, // Hide the border line
        ),
      ),
    );
  }
}
