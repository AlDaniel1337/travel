//========================[ FLAGS ]========================
//*     ADAPTACION DE [country_flags]
//?     Usar iconos de las banderas de los paises
//LINK: https://pub.dev/packages/country_flags
//NOTE: lista de codigos de paises
// http://www.lingoes.net/en/translator/langcode.htm
//==============================================================

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class FlagsIcons extends StatelessWidget {

  final String languageCode;
  final double? size;
   
  const FlagsIcons({
    super.key,
    required this.languageCode,
    this.size = 30.0
  });
  
  @override
  Widget build(BuildContext context) {
    return CountryFlag.fromLanguageCode(
      languageCode,
      shape: const Circle(),
      width: size,
      height: size,
    );
  }
}