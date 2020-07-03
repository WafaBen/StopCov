import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'homepage.dart';

Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);

class WaveDemoHomePage extends StatefulWidget {
  @override
  _WaveDemoHomePageState createState() => _WaveDemoHomePageState();
}

class _WaveDemoHomePageState extends State<WaveDemoHomePage> {
  bool activer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*    title: Text("bleutooth"),
        elevation: 10.0,*/
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [
                  Color(0xFF06397D).withOpacity(0.5),
                  Color(0xFF06397D).withOpacity(0.5)
                ],
                [
                  Color(0xFF01B4BC).withOpacity(0.4),
                  Color(0xFF06397D).withOpacity(0.4)
                ],
                [
                  Color(0xFF06397D).withOpacity(0.3),
                  Color(0xFF01B4BC).withOpacity(0.3)
                ],
                [Color(0xFF01B4BC), Color(0xFF06397D)],
              ],
              durations: [4489, 4256, 4374, 4113],
              heightPercentages: [0.460, 0.465, 0.475, 0.50],
              blur: MaskFilter.blur(BlurStyle.solid, 10),
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            waveAmplitude: 8,
            backgroundColor: Colors.white,
            size: Size(
              double.infinity,
              double.infinity,
            ),
          ),
          Positioned(
              top: 500,
              bottom: 100,
              left: 100,
              right: 100,
              child: Text(
                "veuillez activer votre Bluetooth afin que nous puissions savoir avec qui vous avez été récemment",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, //Color(0xFF06397D).withOpacity(0.7),
                  fontSize: 17,
                ),
              )),
          Positioned(
              top: 650,
              bottom: 50,
              left: 150,
              right: 150,
              child: GestureDetector(
                onTap: () {
                  debugPrint("sssss");
                  setState(() {
                    activer = true;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                },
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: activer
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF01B4BC),
                          boxShadow: [
                              BoxShadow(
                                  color: mCL,
                                  offset: Offset(3, 3),
                                  blurRadius: 3,
                                  spreadRadius: -3),
                            ])
                      : BoxDecoration(
                          color: Color(0xFF01B4BC),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.2,
                              color: mCD,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: Color(0xFF01B4BC),
                              offset: Offset(-10, -10),
                              blurRadius: 10,
                              spreadRadius: 0.2,
                            ),
                          ],
                        ),
                  child: Text(
                    "activer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, //Color(0xFF06397D).withOpacity(0.7),
                      fontSize: 27,
                    ),
                  ),
                ),
              )),
          Positioned(
            top: 70,
            bottom: 500,
            left: 130,
            right: 130,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 210,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF01B4BC),
                        Color(0xFF01B4BC),
                        //  Color(0xFF06397D)
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.2,
                        color: mCD,
                        offset: Offset(10, 10),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: mCL,
                        offset: Offset(-10, -10),
                        blurRadius: 10,
                        spreadRadius: 0.2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF01B4BC),
                          Color(0xFF01B4BC),
                          //Color(0xFF06397D)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(75),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.2,
                          color: mCD,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Color(0xFF06397D).withOpacity(0.5),
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                          spreadRadius: 0.2,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF01B4BC),
                          Color(0xFF01B4BC),
                          //Color(0xFF06397D)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(75),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.2,
                          color: mCD,
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Color(0xFF06397D).withOpacity(0.5),
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                          spreadRadius: 0.2,
                        ),
                      ],
                    ),
                    child: Icon(Icons.bluetooth,
                        size: 40, color: Colors.white //(0xFF06397D),
                        ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
