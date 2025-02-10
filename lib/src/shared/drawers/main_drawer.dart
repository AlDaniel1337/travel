import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:travel_application/src/config/language/use_languaje.dart';
import 'package:travel_application/src/config/navigation/navigation.dart';
import 'package:travel_application/src/shared/buttons/custom_filled_button.dart';
import 'package:travel_application/src/shared/drawers/components/drawer_header.dart';
import 'package:travel_application/src/shared/drawers/components/menu_elements.dart';
import 'package:travel_application/src/shared/drawers/controller/drawer_controller.dart';

//TODO agregar tema

MainDrawerController _mainDrawerController = Get.put(MainDrawerController());

class MainDrawer extends ConsumerStatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const MainDrawer({
    super.key, 
    required this.scaffoldKey
  });

  @override
  MainDrawerState createState() => MainDrawerState();
}

class MainDrawerState extends ConsumerState<MainDrawer> {

  @override
  Widget build(BuildContext context) {

    // final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    // final textStyles = Theme.of(context).textTheme;
    final menuElements = MenuElements();

    return NavigationDrawer(
      elevation: 1,
      selectedIndex: _mainDrawerController.navDrawerIndex,
      onDestinationSelected: (value) {

        setState(() {
          _mainDrawerController.navDrawerIndex = value;
        });

        Routes.goToPageOffNamed(
          page: menuElements.getMenuElement( value ).route );
          widget.scaffoldKey.currentState?.closeDrawer();

      },
      children: [

        CustomDrawerHeader(),
        
        SizedBox(height: 10),

        for( var value in menuElements.getMenuElements() )
        NavigationDrawerDestination(
          icon: Icon( value.icon ), 
          label: LocaleText(text: value.title),
        ),


        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomFilledButton(
            onPressed: () {},
            text: 'Cerrar sesión'
          ),
        ),

      ]
    );
  }
}