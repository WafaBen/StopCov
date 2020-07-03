import 'package:flutter/material.dart';

import 'Colors.dart';
import 'nm_box.dart';

class Questionnaire extends StatefulWidget {
  @override
  QuestionnaireState createState() => new QuestionnaireState();
}

class QuestionnaireState extends State<Questionnaire> {
  List<Question> list = [
    Question(
        "Ces dernières 48 heures, quelle a été votre température la plus élevée ?",
        1, []),
    Question(
        "Ces derniers jours, avez-vous une toux ou une augmentation de votre toux habituelle ?",
        2,
        ["oui", "non"]),
    Question(
        "Ces derniers jours, avez-vous noté une forte diminution ou perte de votre goût ou de votre odorat ?",
        3,
        ["oui", "non"]),
    Question(
        "Ces derniers jours, avez-vous eu un mal de gorge et/ou des douleurs musculaires et/ou des courbatures inhabituelles ?",
        4,
        ["oui", "non"]),
    Question(
        "Ces dernières 24 heures, avez-vous de la diarrhée ?Avec au moins 3 selles molles.",
        5,
        ["oui", "non"]),
    Question("Ces derniers jours, avez-vous une fatigue inhabituelle ?", 6,
        ["oui", "non"]),
    Question(
        "Cette fatigue vous oblige-t-elle à vous reposer plus de la moitié de la journée ?",
        7,
        ["oui", "non"]),
    Question(
        "Depuis 24 heures ou plus, êtes-vous dans l'impossibilité de vous alimenter ou de boire ?",
        8,
        ["oui", "non"]),
    Question(
        "Ces dernières 24 heures, avez-vous noté un manque de souffle inhabituel lorsque vous parlez ou faites un petit effort ?",
        9,
        ["oui", "non"]),
    Question(
        "Quel est votre âge ?Ceci, afin de calculer un facteur de risque spécifique.",
        10,
        ["oui", "non"]),
    Question(
        "Quel est votre taille ?Afin de calculer l’indice de masse corporelle qui est un facteur influençant le risque de complications de l’infection.",
        11,
        ["oui", "non"]),
    Question(
        "Quel est votre poids ?Afin de calculer l’indice de masse corporelle qui est un facteur influençant le risque de complications de l’infection.",
        12,
        ["oui", "non"]),
    Question(
        "Avez-vous de l’hypertension artérielle mal équilibrée ?Ou avez-vous une maladie cardiaque ou vasculaire ?Ou prenez vous un traitement à visée cardiologique ?",
        13,
        ["oui", "non"]),
    Question("Avez-vous ou avez-vous eu un cancer ces trois dernières années ?",
        14, ["oui", "non"]),
    Question(
        "Avez-vous une maladie respiratoire ?Ou êtes-vous suivi par un pneumologue ?",
        15,
        ["oui", "non"]),
    Question("Avez-vous une insuffisance rénale chronique dialysée ?", 16,
        ["oui", "non"]),
    Question("Avez-vous une maladie chronique du foie ?", 17, ["oui", "non"]),
    Question("Êtes-vous enceinte ?", 18, ["oui", "non"]),
    Question(
        "Avez-vous une maladie connue pour diminuer vos défenses immunitaires ?",
        19,
        ["oui", "non"]),
    Question(
        "Prenez-vous un traitement immunosuppresseur ?C’est un traitement qui diminue vos défenses contre les infections.Voici quelques exemples : corticoïdes, méthotrexate, ciclosporine, tacrolimus, azathioprine, cyclophosphamide (liste non exhaustive)",
        20,
        ["oui", "non"]),
  ];
  bool down = true;
  List<bool> downs1 = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];
  List<bool> downs2 = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];

  bool activer = false;
  String text;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: Text('Questionnaire'),
          centerTitle: true,
          backgroundColor: darktbleu,
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'veuillez répondre soigneusement à ces questions',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: red, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            list[index].enonce,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: darktbleu),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          (list[index].propositions.length == 0)
                              ? Container(
                                  width: 300,
                                  height: 60,
                                  decoration: nMtxtf,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
                                    child: TextField(
                                      onChanged: (String str) {
                                        setState(() {
                                          text = str;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: '37.0',
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (downs2[index] == false) {
                                            downs2.insert(
                                                index, !downs2[index]);
                                            downs1.insert(
                                                index, !downs1[index]);
                                          }
                                        });
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: downs1[index]
                                            ? nMRdBtnInvert
                                            : nMRdBtn,
                                        child: Icon(
                                          Icons.fiber_manual_record,
                                          color: downs1[index]
                                              ? Colors.transparent
                                              : darktbleu,
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(
                                      list[index].propositions[0],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: darktbleu),
                                    ),
                                    Padding(padding: EdgeInsets.all(30)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (downs1[index] == false) {
                                            downs2.insert(
                                                index, !downs2[index]);
                                            downs1.insert(index, true);
                                          }
                                        });
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: downs2[index]
                                            ? nMRdBtnInvert
                                            : nMRdBtn,
                                        child: Icon(
                                          Icons.fiber_manual_record,
                                          color: downs2[index]
                                              ? Colors.transparent
                                              : darktbleu,
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(
                                      list[index].propositions[1],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: darktbleu),
                                    ),
                                  ],
                                ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("sssss");
                  setState(() {
                    activer = true;
                  });
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: activer
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: red,
                          boxShadow: [
                              BoxShadow(
                                  color: mCL,
                                  offset: Offset(3, 3),
                                  blurRadius: 10,
                                  spreadRadius: -3),
                            ])
                      : BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
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
                              blurRadius: 14,
                              spreadRadius: 0.2,
                            ),
                          ],
                        ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "voir le résultat",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: darktbleu,
                        fontSize: 27,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String enonce;
  final int numb;
  final List<String> propositions;
  Question(this.enonce, this.numb, this.propositions);
}

class Reponse {
  final int rep;
  final int nbQuestion;

  Reponse(this.rep, this.nbQuestion);
}
