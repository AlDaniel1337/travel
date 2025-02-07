import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:travel_application/src/config/language/language.dart';
import 'package:travel_application/src/config/language/language_keys.dart';

import 'package:travel_application/src/config/navigation/navigation.dart';

void main() {
  runApp(const RiverpodApp());
}

// Agregar gestor de estados Riverpod
class RiverpodApp extends StatelessWidget {
  const RiverpodApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MyApp()
    );
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final selectedLanguage = ref.watch( languajeProvider );
    final language = Locale( selectedLanguage.code, selectedLanguage.extention );
    
    return GetMaterialApp(      
      debugShowCheckedModeBanner: false,
      title: 'TravelApp',
      initialRoute: Routes.home,
      getPages: Routes.getRoutes(),
      navigatorKey: Get.key,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // Idiomas
      locale: language,
      translations: LanguageKeys(),
      fallbackLocale: language,

    );
  }
}