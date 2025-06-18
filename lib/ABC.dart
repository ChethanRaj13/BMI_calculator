import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

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
            style: kLabelTextStyle,
        ),
      ],
    );
  }
}
