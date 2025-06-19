import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';
import 'ABC.dart';
import 'constants.dart';
import 'Result.dart';
import 'calculatorbrain.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;
  Color malecolor = kinactivecolor;
  Color femalecolor = kinactivecolor;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1D1E33),
            title: Center(
              child: Text('BMI CALCULATOR'),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("you tapped male");
                        setState(() {
                          updatecolor(1);
                        });
                      },
                      child: Reuse(
                        colour: malecolor,
                        cardChild: ABC(
                          gender: 'MALE',
                          ic: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("taped female");
                        setState(() {
                          updatecolor(2);
                        });
                      },
                      child: Reuse(
                        colour: femalecolor,
                        cardChild: ABC(
                          gender: 'FEMALE',
                          ic: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                   // Reuse(),
                  ],
                ),
              ),
              Expanded(
                child:
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                            style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kHeightTextStyle,
                          ),
                          Text(
                            "cm",
                                style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });
                      }),
                    ],
                  ),
                  height: 200,
                  width: 400,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kactivecolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                   Reuse(
                     colour: kinactivecolor,
                     cardChild: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                             "WEIGHT",
                           style: kLabelTextStyle,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: [
                             Text(
                               weight.toString(),
                               style: kHeightTextStyle,
                             ),
                             Text(
                               "KG",
                               style: kLabelTextStyle,
                             ),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     weight++;
                                   });
                                 },
                               child: Icon(Icons.add),
                               shape: CircleBorder(),
                             ),
                             SizedBox(width: 15,),
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     weight--;
                                   });
                                 },
                               child: Icon(Icons.remove),
                               shape: CircleBorder(),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                    Reuse(
                      colour: kinactivecolor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: kHeightTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                              ),
                              SizedBox(width: 15,),
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                child: Icon(Icons.remove),
                                shape: CircleBorder(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  Calculatorbrain b = Calculatorbrain(height: height, weight: weight);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Result(
                      bmi: b.calbmi(),
                      sug: b.suggest(),
                      res: b.res(),
                    )),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                        "CALCULATE",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 75,
                ),
              ),
            ],
          )
      ),
    );
  }
  void updatecolor(int gender){
    if(gender == 1){
      if(malecolor == kinactivecolor){
        malecolor = kactivecolor;
        femalecolor = kinactivecolor;
      }
      else{
        malecolor = kinactivecolor;
        femalecolor = kactivecolor;
      }
    }
    if(gender == 2){
      if(femalecolor == kinactivecolor){
        malecolor = kinactivecolor;
        femalecolor = kactivecolor;
      }
      else{
        malecolor = kactivecolor;
        femalecolor = kinactivecolor;
      }
    }
  }
}



