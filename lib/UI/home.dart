import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/menu.dart';
import 'package:flutter_application_1/UI/paginaAcercaDe.dart';
import 'package:flutter_application_1/UI/paginaComprar.dart';
import 'package:flutter_application_1/UI/paginaInicio.dart';
import 'package:flutter_application_1/UI/paginaMisProductos.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

List Paginas = [
  paginaInicio(),
  paginaComprar(),
  paginaMisProductos(),
  paginaAcercaDe()
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CompraCarro.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'CompraTuCarro.com'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx((() => Paginas[Control.posicion])),
      drawer: menu(),
    );
  }
}
