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
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Erika Marin"),
              subtitle: Text("Nombres"),
              leading: Icon(Icons.woman),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Brayan Pinzon"),
              subtitle: Text("Nombres"),
              leading: Icon(Icons.man),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Javier Suárez"),
              subtitle: Text("Nombres"),
              leading: Icon(Icons.man),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("John Ocampo"),
              subtitle: Text("Nombres"),
              leading: Icon(Icons.man),
            ),
          ),
        ],
      ),
    ));
  }
}
