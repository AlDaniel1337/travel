import 'package:flutter/material.dart';


class MenuElement {
  String title;
  IconData icon;

  MenuElement({
    required this.title,
    required this.icon,
  });
  
}


class MenuElements {
  
  final _menuElements = [
    MenuElement(title: "Inicio",            icon: Icons.home),
    MenuElement(title: "Mis reservaciones", icon: Icons.menu_book_rounded),
    MenuElement(title: "Mis cotizaciones",  icon: Icons.calendar_month_rounded),
    MenuElement(title: "Monedero",          icon: Icons.card_giftcard_rounded),
    MenuElement(title: "Salir",             icon: Icons.exit_to_app_rounded),
  ];

  List<MenuElement> getMenuElements() => _menuElements;

}
