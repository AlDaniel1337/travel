import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Language {
  spanish(flag: "🇲🇽", name: "Español", code: "es", extention: "MX"),
  english(flag: "", name: "English", code: "en", extention: "US");

  final String flag;
  final String name;
  final String code;
  final String extention;

  const Language({
    required this.flag,
    required this.name,
    required this.code,
    required this.extention,
  });

}

final languajeProvider = StateProvider<Language>( (ref) => Language.spanish );