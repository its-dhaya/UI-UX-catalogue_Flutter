import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiux/sign2/Buisnesssignin.dart';

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
      body: Column(children:<Widget> [

        SizedBox(height: 300,
        child: Center(
          child: Image.asset('assets/images/Buisness3.jpeg',
          width:500 ,
          height: 500,
          ),
        ),
        )
      ],),

    );
  }
}