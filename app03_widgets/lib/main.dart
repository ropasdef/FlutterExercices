// ignore_for_file: prefer_const_constructors

import 'package:app03_widgets/View/calculadora_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        //Rotas de Navegação
        initialRoute: 'Principal',
        routes: {
          'Principal' : (context) => PrincipalView(),
          'Calculadora' :(context) => CalculadoraView(),
        },

      ),
    ),
  );
}

//tela principal
//stateless - stl
class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //alinhamento vertical
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        //alinhamento horizontal
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Text(
            'Flutter calc',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple.shade700,
            ),
          ),

          Text(
            'Calculadora construida com o framework flutter',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),

          SizedBox(
            width: double.infinity,
            height: 40,
          ),

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade400,
              foregroundColor: Colors.white,
              minimumSize: Size(180, 36)
            ), 

            onPressed: (){

              //Navegar para Rota
              Navigator.pushNamed(context, 'Calculadora');
            },
            child: Text('Entrar'),
            ),
        ],
      ),
    );
  }
}
