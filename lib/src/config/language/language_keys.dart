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
      "Pagina principal" : "Pagina principal",
      "Mis reservaciones": "Mis reservaciones",
      "Mis cotizaciones" : "Mis cotizaciones",
      "Monedero"         : "Monedero",
      "Salir"            : "Salir",
    },

    // Ingles
    "en_US": {
      "Pagina principal" : "Home",
      "Mis reservaciones": "My reservations",
      "Mis cotizaciones" : "My quotes",
      "Monedero"         : "Wallet",
      "Salir"            : "Logout",
    },
  };

}