import 'package:flutter/material.dart';

class paginaInicio extends StatefulWidget {
  const paginaInicio({super.key});

  @override
  State<paginaInicio> createState() => _paginaInicioState();
}

class _paginaInicioState extends State<paginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Center(
          child: Image(
            image: NetworkImage(
                "https://th.bing.com/th/id/R.b9b2a844cfe164a1b6afb8d6282bd235?rik=2lIMgF2i27wxqw&pid=ImgRaw&r=0"),
          ),
        ),
        Text(
          ("Adquiere tu carro nuevo con Nosotros"),
          style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 123, 32, 25)),
        ),
      ],
    ));
  }
}
