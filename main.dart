import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prjp/wave.dart';
import 'Styles.dart';

import 'radbtnnm2.dart';
import 'nm_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
//class Home extends StatelessWidget{}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> wilayas = ['Adrar', 'Chlef', 'Laghouat', 'Oum El Bouaghi'];
  List<DropdownMenuItem<String>> wilayasList;
  String selectadWilaya;
  InputInfo nom = InputInfo('Tapez votre nom');
  InputInfo prenom = InputInfo('Tapez votre prénom');
  InputInfo mail = InputInfo('Entrez votre e-mail ou num de téléphone ');
  InputInfo adresse = InputInfo('Votre adresse exacte ');
  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    wilayasList = buildDropDownMenuItems(wilayas);
    selectadWilaya = wilayasList[0].value;
    _dateTime = DateTime.now();
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List items) {
    List<DropdownMenuItem<String>> liste = List();
    for (String item in items) {
      liste.add(DropdownMenuItem(
        value: item,
        child: Text(item),
      ));
    }
    return liste;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFF1F2F5),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: Column(children: <Widget>[
            Styles().appBar(),
            Styles().logoImage(context),
            Text(
              "Inscription",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
            nom.textField(
              Icon(
                IconData(0xe853, fontFamily: 'MaterialIcons'),
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
            prenom.textField(
              Icon(
                IconData(0xe853, fontFamily: 'MaterialIcons'),
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
            mail.textField(
              Icon(
                IconData(0xe0be, fontFamily: 'MaterialIcons'),
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(left: 50, right: 5, top: 10, bottom: 0),
                  child: Text('Où habitez vous ?',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(6, 57, 125, 1),
                      )),
                ),
                Container(
                  height: 40,
                  width: 180,
                  margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                  padding: EdgeInsets.only(top: 10),
                  decoration: nMbox2,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 30, right: 5, top: 0, bottom: 10),
                    child: DropdownButton<String>(
                      iconEnabledColor: Color.fromRGBO(250, 84, 87, 1),
                      iconDisabledColor: Color.fromRGBO(250, 84, 87, 1),
                      style: TextStyle(
                        color: Color.fromRGBO(250, 84, 87, 1),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w800,
                      ),
                      underline: Container(
                        height: 0,
                        color: Colors.transparent,
                      ),
                      items: wilayasList,
                      onChanged: (String itemSelected) {
                        setState(() {
                          selectadWilaya = itemSelected;
                        });
                      },
                      value: selectadWilaya,
                    ),
                  ),
                ),
              ],
            ),
            adresse.textField(
              Icon(
                IconData(57574, fontFamily: 'MaterialIcons'),
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(left: 50, right: 5, top: 20, bottom: 0),
                  child: Text(
                    'Date de naissance :',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(6, 57, 125, 1),
                    ),
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.only(left: 10, right: 5, top: 20, bottom: 0),
                    width: 180,
                    height: 40,
                    decoration: nMbox2,
                    child: GestureDetector(
                        child: Row(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 30, right: 30, top: 10, bottom: 10),
                            child: Text(
                                _dateTime.year.toString() +
                                    '/' +
                                    _dateTime.month.toString() +
                                    '/' +
                                    _dateTime.day.toString(),
                                style: TextStyle(
                                  color: Color.fromRGBO(250, 84, 87, 1),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 0, top: 10, bottom: 10),
                            child: Icon(
                              IconData(0xe5c5, fontFamily: 'MaterialIcons'),
                              color: Color.fromRGBO(250, 84, 87, 1),
                            ),
                          ),
                        ]),
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2001),
                                  firstDate: DateTime(1940),
                                  lastDate: DateTime(2007))
                              .then((date) {
                            setState(() {
                              _dateTime = date;
                            });
                          });
                        }))
              ],
            ),
            Container(
                margin:
                    EdgeInsets.only(left: 180, right: 5, top: 50, bottom: 0),
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 84, 87, 1),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          offset: Offset(4.0, 4.0),
                          blurRadius: 5.0,
                          spreadRadius: 5.0),
                      BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 5.0,
                          spreadRadius: 5.0),
                    ]),
                child: GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 35, right: 0, top: 10, bottom: 0),
                      child: Text('Suivant',
                          style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Inscription2(
                                  name: nom.texte,
                                  surname: prenom.texte,
                                  mail: mail.texte,
                                  wilaya: this.selectadWilaya,
                                  adresse: adresse.texte,
                                  birth: _dateTime)));
                    }))
          ]),
        ));
  }
}

class Inscription2 extends StatefulWidget {
  final String title;
  final String name;
  final String surname;
  final String mail;
  final String wilaya;
  final String adresse;
  final DateTime birth;
  Inscription2(
      {Key key,
      this.title,
      this.name,
      this.surname,
      this.mail,
      this.wilaya,
      this.adresse,
      this.birth})
      : super(key: key);

  @override
  _Inscription2State createState() => _Inscription2State(this.name,
      this.surname, this.mail, this.adresse, this.wilaya, this.birth);
}

class _Inscription2State extends State<Inscription2> {
  final String name;
  final String surname;
  final String mail;
  final String wilaya;
  final String adresse;
  final DateTime birth;
  _Inscription2State(
      this.name, this.surname, this.mail, this.adresse, this.wilaya, this.birth)
      : super();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF1F2F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Column(children: <Widget>[
          Container(
            width: 350,
            margin: EdgeInsets.only(
              top: 150,
              left: 10,
              right: 10,
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 30),
            decoration: nMbox,
            child: Text(
              'En cas de tomber malade,\n'
              'Acceptez-vous de déclarer votre nom?',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 90, top: 20, right: 0, bottom: 0),
                child: Nmrdsbtn2(),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 40,
            margin: EdgeInsets.only(
              top: 30,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 100, left: 20),
            decoration: nMbox,
            child: Text(
              'Vous êtes malade de:',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(250, 84, 87, 1),
              ),
            ),
          ),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40, top: 30, right: 0, bottom: 0),
              child: Checkboxe(),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(left: 20, top: 30),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 30),
              decoration: nMbox,
              child: Text(
                'Diabète',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(6, 57, 125, 1),
                ),
              ),
            )
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40, top: 15, right: 0, bottom: 0),
              child: Checkboxe(),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(left: 20, top: 20),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 30),
              decoration: nMbox,
              child: Text(
                'Maladie cardiaque',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(6, 57, 125, 1),
                ),
              ),
            )
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40, top: 15, right: 0, bottom: 0),
              child: Checkboxe(),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(left: 20, top: 20),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 30),
              decoration: nMbox,
              child: Text(
                'Tension',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(6, 57, 125, 1),
                ),
              ),
            )
          ]),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 100),
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 84, 87, 1),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 5.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5.0,
                        spreadRadius: 5.0),
                  ]),
              child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Terminer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WaveDemoHomePage()));
                  }))
        ]),
      ),
    );
  }
}
