import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  FlatButton({required EdgeInsets padding, required Color color, required Function onPressed, required Text child}) {}
}
