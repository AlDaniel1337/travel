import 'package:flutter/material.dart';
import 'package:travel_application/src/config/language/use_languaje.dart';
import 'package:travel_application/src/shared/drawers/components/drawer_header.dart';
import 'package:travel_application/src/shared/drawers/components/menu_elements.dart';

//TODO agregar tema

class MainDrawer extends StatelessWidget {
   
  const MainDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {

    MenuElements menuElements = MenuElements();

    return Drawer(
      child: ListView(
        children: [
          
          CustomDrawerHeader(),

          for( var value in menuElements.getMenuElements() )
          ListTile(
            leading: Icon( value.icon ),
            title: LocaleText(text: value.title),
          )

        ],
      ),
    );
  }
}