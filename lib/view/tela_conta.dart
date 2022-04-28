import 'package:flutter/material.dart';

class TelaConta extends StatefulWidget {
  const TelaConta({Key? key}) : super(key: key);

  @override
  State<TelaConta> createState() => _TelaContaState();
}

class _TelaContaState extends State<TelaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minha Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF181818),
      ),

      //BODY
      backgroundColor: const Color(0xFF181818),
    );
  }
}