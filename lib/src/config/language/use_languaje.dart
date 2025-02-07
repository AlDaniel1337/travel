import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleText extends StatelessWidget {

  final String text;
   
  const LocaleText({
    super.key,
    required this.text,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text( text.tr );
  }
}