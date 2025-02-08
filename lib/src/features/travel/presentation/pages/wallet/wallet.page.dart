import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {

  static const String route = "/wallet";
   
  const WalletPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('WalletPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('WalletPage'),
      ),
    );
  }
}