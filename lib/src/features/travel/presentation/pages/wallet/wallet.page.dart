import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_application/src/features/travel/presentation/pages/wallet/components/wallet_total_details.dart';
import 'package:travel_application/src/shared/drawers/controller/drawer_controller.dart';
import 'package:travel_application/src/shared/drawers/main_drawer.dart';

MainDrawerController _mainDrawerController = Get.put(MainDrawerController());

class WalletPage extends StatelessWidget {

  static const String route = "/wallet";
   
  const WalletPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      drawer: MainDrawer( scaffoldKey: _mainDrawerController.scaffoldKey, ),
      appBar: AppBar(),
   
      body: Column(
        children: [
          WalletTotalDetails()
        ],
      )
    );
  }
}