// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'view/detalhes_view.dart';
import 'view/principal_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        //
        // ROTAS DE NAVEGAÇÃO
        //
        initialRoute: 'principal',
        routes: {
          'principal': (context) => PrincipalView(),
          'detalhes': (context) => DetalhesView(),
        },
      ),
    ),
  );
}