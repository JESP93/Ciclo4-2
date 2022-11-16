import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class paginaMiCarritodeCompras extends StatefulWidget {
  const paginaMiCarritodeCompras({super.key});

  @override
  State<paginaMiCarritodeCompras> createState() =>
      _paginaMiCarritodeComprasState();
}

class _paginaMiCarritodeComprasState extends State<paginaMiCarritodeCompras> {
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
                          trailing: Text((Control.pro[index].cantidad *
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
              onPressed: () {
                Alert(
                    context: context,
                    title: "Mensaje de Confirmación",
                    desc: "Tu compra se ha realizado con Exito",
                    buttons: [
                      DialogButton(
                          child: Text("Cerrar"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ]).show();
              },
              icon: Icon(Icons.save),
              label: Text("Comprar"))
        ]),
      ),
    );
  }
}
