import 'package:flutter/material.dart';
import 'package:travel_application/src/config/language/language_popup_menu.dart';

class CustomDrawerHeader extends StatelessWidget {
   
  const CustomDrawerHeader({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
          ),
        
          child: const UserAccountsDrawerHeader(
            accountName:  Text("accountName"), 
            accountEmail: Text("accountEmail"),
            currentAccountPicture: CircleAvatar(
            ),
          ),
        
        ),
    
        Positioned(
          top: 20,
          right: 20,
          child: LanguagePopupMenu()
        )
      ],
    );
  }
}