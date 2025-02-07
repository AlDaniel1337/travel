//========================[ LAUNCH URL ]========================
//*     ADAPTACION DE [url_launcher]
//?     Abrir url externo en la aplicación
//LINK: https://pub.dev/packages/url_launcher
//==============================================================
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlPlugin{
  
  /// Abrir url externo en la aplicación
  ///+ [externalUrl] - Direción a la que se quiere acceder
  static openUrl({ required String externalUrl }) async {
    final Uri url = Uri.parse(externalUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}