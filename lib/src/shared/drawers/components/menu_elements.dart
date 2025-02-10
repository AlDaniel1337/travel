import 'package:flutter/material.dart';
import 'package:travel_application/src/features/travel/presentation/presentation.dart';


class MenuElement {
  String title;
  IconData icon;
  String route;

  MenuElement({
    required this.title,
    required this.icon,
    required this.route,
  });
  
}


class MenuElements {
  
  final _menuElements = [
    MenuElement(title: "Inicio",            route: HomePage.route,         icon: Icons.home),
    MenuElement(title: "Mis reservaciones", route: ReservationsPage.route, icon: Icons.menu_book_rounded),
    MenuElement(title: "Mis cotizaciones",  route: QuotesPage.route,       icon: Icons.calendar_month_rounded),
    MenuElement(title: "Monedero",          route: WalletPage.route,       icon: Icons.card_giftcard_rounded),
  ];

  List<MenuElement> getMenuElements() => _menuElements;
  MenuElement getMenuElement( int index ) => _menuElements[index];

}
