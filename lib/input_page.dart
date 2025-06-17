import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
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
            children: [
              Expanded(
                child: Row(
                  children: [
                    Reuse(
                      colour: Color(0xFF1D1E33),
                      cardChild: ABC(
                        gender: 'MALE',
                        ic: FontAwesomeIcons.mars,
                      ),
                    ),
                    Reuse(
                      colour: Color(0xFF1D1E33),
                      cardChild: ABC(
                        gender: 'FEMALE',
                        ic: FontAwesomeIcons.venus,
                      ),
                    ),
                   // Reuse(),
                  ],
                ),
              ),
              Expanded(
                child:
                Container(
                  height: 200,
                  width: 400,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                   // Reuse(),
                    // Reuse(),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

class ABC extends StatelessWidget {
  final String gender;
  final IconData? ic;

  const ABC({
    Key? key,
    required this.gender,
    this.ic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8F98),
          ),
        ),
      ],
    );
  }
}

class Reuse extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  const Reuse({
    Key? key,
    required this.colour,
    this.cardChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 165,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour, // ✅ use the colour passed from outside
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardChild, // ✅ show the child if provided
    );
  }
}
