import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_application/src/features/travel/presentation/presentation.dart';

//~ Interface para los elementos del menu
class MenuOption{
  String title;
  String page;

  MenuOption({
    required this.title,
    required this.page,
  });
}

/// Navegacion
class Routes{

  // Rutas disponibles
  static const String home = WalletPage.route; //HomePage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route,         page:() => const HomePage()),
      GetPage(name: ReservationsPage.route, page:() => const ReservationsPage()),
      GetPage(name: QuotesPage.route,       page:() => const QuotesPage()),
      GetPage(name: WalletPage.route,       page:() => const WalletPage()),
    ];
    
    return pages;
  }  
  
  
  //^ ==========[ NAVEGACIÓN ]========== ^\\
  /// Moverse a otra pantalla dejando la anterior en el historial
  static goToPage({required String page}) => Get.toNamed(page);
  
  /// Moverse a otra pantalla dejando la anterior en el historial
  static goToPageOffNamed({required String page}) => Get.offNamed(page);

  /// Cerrar y regresar a la pagina anterior
  static goBackToPage({required BuildContext context}) => Navigator.of(context).pop(true);

}