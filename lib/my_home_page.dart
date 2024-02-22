import 'package:flutter/material.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomPage'),
      ),
      
      body: 
      Center(
        child: Image.asset(
          'assets/kg.png',
          width: 250,
          height: 300,
        ),
      ),
    );
  }
}
