import 'package:bmi_calc_app/widgets/left_bar.dart';
import 'package:bmi_calc_app/widgets/right_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc_app/constants/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style:
                TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: mainHexColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Weight',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: accentHexColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Text(
                  '10',
                  style: TextStyle(
                    fontSize: 90,
                    color: accentHexColor
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Text(
                  'Normal weigth',
                  style: TextStyle(
                    color: accentHexColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              SizedBox(height: 10,),
              LeftBar(barWidth: 40,),
              SizedBox(height: 10,),
              LeftBar(barWidth: 70,),
              SizedBox(height: 10,),
              LeftBar(barWidth: 40,),
              SizedBox(height: 10,),
              RightBar(barWidth: 40,),
              SizedBox(height: 10,),
              RightBar(barWidth: 70,),
              SizedBox(height: 10,),
              RightBar(barWidth: 40,),
            ],
          ),
        ));
  }
}
