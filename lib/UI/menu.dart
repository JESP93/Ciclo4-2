import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/R.028b00add30e5f0de4cd290ae01573ad?rik=69Mu86JjTMXg%2bw&riu=http%3a%2f%2f4.bp.blogspot.com%2f-300DQp2hBic%2fUtf1BxnAaOI%2fAAAAAAAAD1I%2f5rGQqusTEGo%2fs1600%2fsilueta%2bfoto%2bcarnet.jpg&ehk=q7F56cr28Mzay06%2bZ%2fwj55RMcXzVjJHAbey8X8RTuKs%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1"),
                    ),
                    accountName: Text("Your User is: ........"),
                    accountEmail:
                        Text("Your Mail is ........email@uninorte.edu.co"))),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Inicio"),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_right_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      Control.cargarPosicion(0);
                    },
                  ),
                  ListTile(
                    title: Text("Nuestros Productos"),
                    leading: Icon(Icons.car_rental),
                    trailing: Icon(Icons.arrow_right_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      Control.cargarPosicion(1);
                    },
                  ),
                  ListTile(
                    title: Text("Mi Carrito de Compras"),
                    leading: Icon(Icons.shopping_cart_outlined),
                    trailing: Icon(Icons.arrow_right_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      Control.cargarPosicion(2);
                    },
                  ),
                  ListTile(
                    title: Text("Acerca de Nosotros"),
                    leading: Icon(Icons.factory),
                    trailing: Icon(Icons.arrow_right_outlined),
                    onTap: () {
                      Navigator.pop(context);
                      Control.cargarPosicion(3);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
