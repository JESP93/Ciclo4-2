import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/home.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}
