import 'package:bmi_calc_app/controllers/home_controller.dart';
import 'package:bmi_calc_app/widgets/left_bar.dart';
import 'package:bmi_calc_app/widgets/right_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc_app/constants/app_constants.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        id: 'home',
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  'BMI Calculator',
                  style: TextStyle(
                      color: accentHexColor, fontWeight: FontWeight.w300),
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
                            controller: _.heightController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w300,
                              color: accentHexColor,
                            ),
                            decoration: InputDecoration(
                              
                                border: InputBorder.none,
                                hintText: 'Height (m)',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                )),
                          ),
                        ),
                        Container(
                          width: 130,
                          child: TextField(
                            controller: _.weightController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w300,
                              color: accentHexColor,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Weight (Kg)',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.grey[600],
                      minWidth: 150,
                      height: 50,
                      child: Container(
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: accentHexColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onPressed: () {
                        _.calculateBMI();
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GetBuilder<HomeController>(id:'result',builder: (text) {
                      return Container(
                        child: Text(
                          text.result.toString(),
                          style: TextStyle(fontSize: 80, color: accentHexColor),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        _.textResult,
                        style: TextStyle(
                            color: accentHexColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LeftBar(
                      barWidth: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LeftBar(
                      barWidth: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LeftBar(
                      barWidth: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RightBar(
                      barWidth: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RightBar(
                      barWidth: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RightBar(
                      barWidth: 40,
                    ),
                  ],
                ),
              ));
        });
  }
}
