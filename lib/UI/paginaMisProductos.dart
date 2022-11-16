import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

class paginaMisProductos extends StatefulWidget {
  const paginaMisProductos({super.key});

  @override
  State<paginaMisProductos> createState() => _paginaMisProductosState();
}

class _paginaMisProductosState extends State<paginaMisProductos> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: Control.pro.length,
              itemBuilder: (BuildContext context, int index) {
                return Control.pro[index].cantidad == 0
                    ? Text(" ")
                    : Card(
                        child: ListTile(
                          leading: Image(
                            image: NetworkImage(Control.pro[index].imagen),
                          ),
                          title: Text(Control.pro[index].nombre),
                          subtitle: Text("Precio :  " +
                              Control.pro[index].precio.toString() +
                              "  |  Cantidad : " +
                              Control.pro[index].cantidad.toString()),
                          trailing: Text((Control.pro[index].cantidad +
                                  Control.pro[index].precio)
                              .toString()),
                        ),
                      );
              },
            ),
          ),
          Divider(),
          Text(
            "Total a Pagar : " + Control.calcularTotal().toString(),
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.save), label: Text("Comprar"))
        ]),
      ),
    );
  }
}
