import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                SizedBox(width: 100),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 140,
                    width: 140,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.all(Radius.circular(70)),
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
                ),
              ]),
              SizedBox(
                height: 40.0,
              ),
              Text("Email",
                  style: TextStyle(
                    color: Color(0xff06397D),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0XFFEFF3F6),
                    borderRadius: BorderRadius.circular(60.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(6, 2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0),
                      BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          offset: Offset(-6, -2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0)
                    ]),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Color(0xff06397D)),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color(0xff06397D),
                    ),
                    hintText: "Your email here",
                    hintStyle: TextStyle(
                      color: Color(0xff06397D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Password",
                  style: TextStyle(
                    color: Color(0xff06397D),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0XFFEFF3F6),
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(6, 2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0),
                      BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          offset: Offset(-6, -2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0)
                    ]),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Color(0xff06397D)),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff06397D),
                    ),
                    hintText: "Your password here",
                    hintStyle: TextStyle(
                      color: Color(0xff06397D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text("Forgot password?",
                      style: TextStyle(
                        color: Color(0xff06397D),
                      )),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFFfa5457),
                            Color(0xFFf9e900),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0))),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Text('         Login        ',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text(
                    "_____________Or sign in with _____________",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff06397D),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              'assets/facebook.png',
                              height: 40,
                              width: 40,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
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
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              'assets/google.png',
                              height: 40,
                              width: 40,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(
                              color: Color(0xff06397D),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              color: Color(0xff06397D),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MyHomePage()));
                    },
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
