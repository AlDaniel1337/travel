import 'package:flutter/material.dart';

class QuotesPage extends StatelessWidget {

  static const String route = "/quotes";
   
  const QuotesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('QuotesPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('QuotesPage'),
      ),
    );
  }
}