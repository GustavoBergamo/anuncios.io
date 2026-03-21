import 'package:flutter/material.dart';

class TabelaServico extends StatefulWidget {
  const TabelaServico({super.key});
  @override
  State<TabelaServico> createState() => tabelaServico();
}

// ignore: camel_case_types
class tabelaServico extends State<TabelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Serviços')),
      body: InteractiveViewer(
        maxScale: 5.0,
        minScale: 0.1,
        child: Center(child: Image.asset('lib/tabela_servico.png')),
      ),
    );
  }
}
