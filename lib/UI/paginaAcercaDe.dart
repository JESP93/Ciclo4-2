import 'package:flutter/material.dart';

class paginaAcercaDe extends StatefulWidget {
  const paginaAcercaDe({super.key});

  @override
  State<paginaAcercaDe> createState() => _paginaAcercaDeState();
}

class _paginaAcercaDeState extends State<paginaAcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Esta es la página de Acerca de.."),
    );
  }
}
