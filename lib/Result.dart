import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.bmi,
    required this.sug,
    required this.res,
  }) : super(key: key);

  final String bmi;
  final String sug;
  final String res;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: kinactivecolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "BMI Score",
                      style: kLabelTextStyle,
                    ),
                    SizedBox(height: 100),
                    Text(
                      res,
                      style: kResultTextStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      bmi,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 70,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      sug,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: 75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
