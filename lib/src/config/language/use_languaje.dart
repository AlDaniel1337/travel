import 'package:flutter/material.dart';
import 'package:get/get.dart';

//========================[ LOCALE TEXT ]========================
//*     TEXTO LOCALIZADO
//?     Cambiar en tiempo real el idioma de los textos
//NOTE: El texto debe de estar definido en `language_keys.dart`
//      De lo contrario tomara y suara el texto sin 'localizarlo'
//===============================================================

class LocaleText extends StatelessWidget {

  final String text;
  final TextStyle? style;
  
  const LocaleText({
    super.key,
    required this.text, 
    this.style,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text( text.tr, style: style, );
  }
}