import 'package:flutter/material.dart';

class ReservationsPage extends StatelessWidget {

  static const String route = "/reservations";
   
  const ReservationsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('ReservationsPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('ReservationsPage'),
      ),
    );
  }
}