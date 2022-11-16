import 'package:flutter_application_1/clases/productos.dart';
import 'package:get/get.dart';

class controladorGeneral extends GetxController {
  final _posicion = 0.obs;
  final pro = <productos>[].obs;

////////////////////////////////LISTA PRODUCTOS
  @override
  void onInit() {
    pro.add(productos(
        "001",
        "Audi",
        "https://www.bajapress.com/api/image-from-sever/origin/media-manager/marcas-de-lujo-presentan-sus-novedades-en-semana-del-auto_1565996205.jpg",
        50000,
        0));

    pro.add(productos(
        "002",
        "Bugatti",
        "https://www.bajapress.com/api/image-from-sever/origin/media-manager/marcas-de-lujo-presentan-sus-novedades-en-semana-del-auto_1565996205.jpg",
        60000,
        0));

    pro.add(productos(
        "003",
        "Ferrari",
        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/43896a93049697.5e5af1b811977.jpg",
        50000,
        0));

    pro.add(productos(
        "004",
        "Mercedez",
        "https://www.bajapress.com/api/image-from-sever/origin/media-manager/marcas-de-lujo-presentan-sus-novedades-en-semana-del-auto_1565996205.jpg",
        50000,
        0));
    // TODO: implement onInit
    super.onInit();
  }

/////////////////////////////// Controlador de Cantidad de Productos
  void cambiarCantidad(int posicionEnComprar, int cantidadEnComprar) {
    pro[posicionEnComprar].cantidad = cantidadEnComprar;
  }

////////////////////////////// COntrolador de Total a Pagar
  int calcularTotal() {
    int total = 0;
    for (var i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

///////////////////////////// Controlador de Posición
  void cargarPosicion(int x) {
    _posicion.value = x;
  }

  int get posicion => _posicion.value;
}
