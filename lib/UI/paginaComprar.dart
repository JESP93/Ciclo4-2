import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

class paginaComprar extends StatefulWidget {
  const paginaComprar({super.key});

  @override
  State<paginaComprar> createState() => _paginaComprarState();
}

class _paginaComprarState extends State<paginaComprar> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Obx(
              () => ListView.builder(
                itemCount: Control.pro.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading:
                          Image(image: NetworkImage(Control.pro[index].imagen)),
                      title: Text(Control.pro[index].nombre +
                          "  |  " +
                          Control.pro[index].precio.toString()),
                      trailing: Text(
                        Control.pro[index].cantidad.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      subtitle: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                int nuevacantidad =
                                    Control.pro[index].cantidad - 1;

                                if (nuevacantidad < 0) {
                                  nuevacantidad = 0;
                                }

                                Control.cambiarCantidad(index, nuevacantidad);
                                Control.pro.refresh();
                              },
                              icon: Icon(Icons.arrow_circle_down)),
                          VerticalDivider(),
                          IconButton(
                              onPressed: () {
                                int nuevacantidad =
                                    Control.pro[index].cantidad + 1;
                                Control.cambiarCantidad(index, nuevacantidad);
                                Control.pro.refresh();
                              },
                              icon: Icon(Icons.arrow_circle_up))
                        ],
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
