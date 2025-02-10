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
      "Inicio"           : "Inicio",
      "Mis reservaciones": "Mis reservaciones",
      "Mis cotizaciones" : "Mis cotizaciones",
      "Monedero"         : "Monedero",
      "Cerrar sesión"    : "Cerrar sesión",
    },

    // Ingles
    "en_US": {
      "Inicio"           : "Home",
      "Mis reservaciones": "My reservations",
      "Mis cotizaciones" : "My quotes",
      "Monedero"         : "Wallet",
      "Cerrar sesión"    : "Logout",
    },
  };

}