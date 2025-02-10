import 'package:flutter/material.dart';
import 'package:travel_application/src/config/language/use_languaje.dart';

class CustomFilledButton extends StatelessWidget {

  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;

  const CustomFilledButton({
    super.key, 
    this.onPressed, 
    required this.text, 
    this.buttonColor
  });

  @override
  Widget build(BuildContext context) {

    const radius = Radius.circular(10);

    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(radius)
      )),
        
  
      onPressed: onPressed, 
      child: LocaleText(text: text)
    );
  }
}