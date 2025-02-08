import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:travel_application/src/config/language/language.dart';
import 'package:travel_application/src/config/plugins/flags.plugin.dart';

/// Menu para selecionar el idioma
class LanguagePopupMenu extends ConsumerWidget {
   
  const LanguagePopupMenu({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final language = ref.watch( languajeProvider );
    
    return PopupMenuButton<Language>(
      onSelected: (value) async {
        ref.read( languajeProvider.notifier ).update( (_) => value);
        Get.updateLocale( Locale(value.code, value.extention) );
      },

      child: FlagsIcons(languageCode: "${language.code}-${language.extention}"),      

      itemBuilder: ( context ) => [

        for( var value in Language.values )
        PopupMenuItem(
          value: value,
          child: Row(
            children: [
              FlagsIcons(languageCode: "${value.code}-${value.extention}", size: 20,),
              Spacer(),
              Text( value.name ),
            ],
          ),
        )

      ]
    );
  }
}