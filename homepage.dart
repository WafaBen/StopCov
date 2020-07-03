import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:prjp/quiz.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 25, color: Color(0xff06397D)),
            Icon(Icons.settings_bluetooth, size: 25, color: Color(0xff06397D)),
            Icon(Icons.notifications, size: 25, color: Color(0xff06397D)),
            Icon(Icons.settings, size: 25, color: Color(0xff06397D)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Color(0xFFfa5457),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {});
          },
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //fooooormulaaaaire
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Un formulaire\n",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF01b4bc),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Questionnaire()));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                        /*gradient: LinearGradient(
                    colors: [Color(0xff06397D),Color(0xff01b4bc)],
                  ),*/
                        color: Color(0XFFEFF3f6),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.9),
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset(
                          'assets/form.png',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Faites votre propre test',
                              style: const TextStyle(
                                color: Color(0xff06397D),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

/*****************************************/
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Satistiques d'aujourd'hui\n",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF01b4bc),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          /*gradient: LinearGradient(
                    colors: [Color(0xff06397D),Color(0xff01b4bc)],
                  ),*/
                          color: Color(0XFFEFF3f6),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Counter(
                            color: Color(0xFFfa8925),
                            number: 13546,
                            title: "Confirmés",
                          ),
                          Counter(
                            color: Color(0xFFfa5457),
                            number: 910,
                            title: "Décès",
                          ),
                          Counter(
                            color: Color(0xFF36C12C),
                            number: 8005,
                            title: "Guéris",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Des conseils\n",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF01b4bc),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 0),
                        physics: BouncingScrollPhysics(),
                        children: <Widget>[
                          _buildPrevention("assets/a10.png", "Lavez-vous",
                              "souvent\nles mains"),
                          _buildPrevention("assets/a4.png", "Couvrez-vous",
                              "la bouche quand\nvous toussez"),
                          _buildPrevention(
                              "assets/a6.png", "Toujours", "propre"),
                          _buildPrevention(
                              "assets/a9.png", "Utilisez", "les bavettes"),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Détection\n",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF01b4bc),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 450,
                      decoration: BoxDecoration(
                          /*gradient: LinearGradient(
                    colors: [Color(0xff06397D),Color(0xff01b4bc)],
                  ),*/
                          color: Color(0XFFEFF3f6),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            'assets/bluetooth.png',
                            height: 90,
                            width: 90,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Détectez les gens\nproches de vous',
                                style: const TextStyle(
                                  color: Color(0xff06397D),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]));
  }
}

Widget _buildPrevention(String path, String text1, String text2) {
  return Column(
    children: <Widget>[
      Container(
        width: 170,
        height: 80,
        decoration: BoxDecoration(
            /*gradient: LinearGradient(
                    colors: [Color(0xff06397D),Color(0xff01b4bc)],
                  ),*/
            color: Color(0XFFEFF3f6),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ]),
        padding: EdgeInsets.only(right: 12, bottom: 12),
        child: Row(
          children: <Widget>[
            Image.asset(path),
            SizedBox(width: 10),
            RichText(
              text: TextSpan(
                  text: "$text1\n",
                  style: TextStyle(
                    color: Color(0xff06397D),
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ]),
            )
          ],
        ),
        margin: EdgeInsets.only(right: 20),
      ),
    ],
  );
}

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  const Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "$number",
          style: TextStyle(
            fontSize: 25,
            color: color,
          ),
        ),
        Text(title, style: TextStyle(fontSize: 16, color: Color(0xFF959595))),
      ],
    );
  }
}
