//==============[ LOCALIZACION ]==============
//* IDIOMAS DISPONIBLES
//? Manejar la localizacion de la app
//============================================

import 'package:get/get_navigation/get_navigation.dart';

class LanguageKeys extends Translations{

  @override
  Map< String, Map<String, String>> get keys => {
    // Español
    "es_MX": {
      "Pagina principal": "Pagina principal"
    },

    // Ingles
    "en_US": {
      "Pagina principal": "Home"
    },
  };

}