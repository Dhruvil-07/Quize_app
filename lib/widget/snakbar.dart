import 'package:flutter/material.dart';
import 'package:my_quize/widget/text.dart';

ScaffoldFeatureController showsnakbar(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.deepPurple.shade300,
          elevation: 30.0,
          shape: StadiumBorder(),
          duration: Duration(milliseconds: 1000),
          behavior: SnackBarBehavior.floating,
          content: Container(
              child: cario_text(containt: 'Select Answer', fontsize: 15,)
          )
      )
  );
}


