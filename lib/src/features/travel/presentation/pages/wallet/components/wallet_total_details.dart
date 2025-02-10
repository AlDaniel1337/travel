import 'package:flutter/material.dart';
import 'package:travel_application/src/config/language/use_languaje.dart';

class WalletTotalDetails extends StatelessWidget {
   
  const WalletTotalDetails({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _DetailsText(title: "Total MXN",  amount: "20,000.00"),
          _DetailsText(title: "Consumido",  amount: "1,000.00"),
          _DetailsText(title: "Disponible", amount: "19,000.00"),
        ],
      ),
    );
  }
}

class _DetailsText extends StatelessWidget {

  final String title;
  final String amount;
   
  const _DetailsText({
    required this.title, 
    required this.amount
  });
  
  @override
  Widget build(BuildContext context) {

    double textSize = 24;

    return Row(
      children: [
        LocaleText(text: "$title:", style: TextStyle( fontSize: textSize ),),
        Spacer(),
        Text("\$$amount", style: TextStyle( fontSize: textSize ),)
      ],
    );
  }
}