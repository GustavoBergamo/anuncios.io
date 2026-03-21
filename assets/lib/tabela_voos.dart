import 'package:flutter/material.dart';

class TabelaVoos extends StatefulWidget {
  const TabelaVoos({super.key});
  @override
  State<TabelaVoos> createState() => tabelaVoos();
}

// ignore: camel_case_types
class tabelaVoos extends State<TabelaVoos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tabela de vôos')),
      body: InteractiveViewer(
        maxScale: 5.0,
        minScale: 0.1,
        child: Center(child: Image.asset('lib/tabela_voos.png')),
      ),
    );
  }
}
