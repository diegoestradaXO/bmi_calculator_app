import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc_app/constants/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: accentHexColor,
            fontWeight: FontWeight.w300
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          
        ),
      )
    );
  }
}