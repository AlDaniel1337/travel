import 'package:flutter/material.dart';
import 'package:travel_application/src/config/language/use_languaje.dart';
import 'package:travel_application/src/shared/shared.dart';

class HomePage extends StatelessWidget {

  static const String route = "/home";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      drawer: MainDrawer(),
   
      appBar: AppBar(
        title: LocaleText(text: "Pagina principal"),
        centerTitle: true,
      ),
   
      body: Center(
        child:
        InkWell(
          onTap: () async {
            print('Container Pressed');
            //LaunchUrlPlugin.openUrl(externalUrl: "https://www.google.com/");
          },
        
          child: SizedBox(
            height: 200,
            width: 300,
            child: Placeholder(),
          ),
        ),
      ),
    );
  }

}