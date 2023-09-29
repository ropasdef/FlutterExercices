// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

//Tela Calculadora


class CalculadoraView extends StatefulWidget {
  const CalculadoraView({super.key});

  @override
  State<CalculadoraView> createState() => _CalculadoraViewState();
}


class _CalculadoraViewState extends State<CalculadoraView> {

  //TextEditControlller
  //Obketos responsáveis pela leitura/escrita de valores
  //nos campos do texto
  var txtValor1 = TextEditingController();
  var txtValor2 = TextEditingController();

  //Método para exibir o resultado do cálculo
  void exibirResultado(context, res){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(res),
        duration: Duration(seconds: 2)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter calc'),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Icon(
              Icons.calculate,
              size: 100,
              color: Colors.deepPurple,
            ),

            SizedBox(
              height: 35,
            ),

            TextField(
              //Indicar o controlador
              controller: txtValor1,
              style: TextStyle(
                fontSize: 22,
              ),
      
              decoration: InputDecoration(
                labelText: 'Valor 1',
                hintText: 'Entra com o primeiro valor',
                border: OutlineInputBorder(),
              ),
      
            ),

            SizedBox(
              height: 20,
            ),

            TextField(
              //Indicar o controlador
              controller: txtValor2,
              style: TextStyle(
                fontSize: 22,
              ),
      
              decoration: InputDecoration(
                labelText: 'Valor 2',
                hintText: 'Entra com o segundo valor',
                border: OutlineInputBorder(),
              ),
      
            ),

            SizedBox(
              height: 30,
            ),

            //OPERAÇÕES
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60,60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('+'),
                  onPressed: (){
                    //ação ao pressionar o botão
                    setState(() {
                      double v1 = double.parse(txtValor1.text);
                      double v2 = double.parse(txtValor2.text);

                      double res = v1 + v2;
                      exibirResultado(
                        context,
                        "Resultado: " + res.toStringAsFixed(2)
                      );
                    });

                  },
                ),
                SizedBox(width: 30),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60,60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('-'),
                  onPressed: (){
                    //ação ao pressionar o botão
                    setState(() {
                      double v1 = double.parse(txtValor1.text);
                      double v2 = double.parse(txtValor2.text);

                      double res = v1 - v2;
                      exibirResultado(
                        context,
                        "Resultado: " + res.toStringAsFixed(2)
                      );
                    });

                  },
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60,60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('x'),
                  onPressed: (){
                    //ação ao pressionar o botão
                    setState(() {
                      double v1 = double.parse(txtValor1.text);
                      double v2 = double.parse(txtValor2.text);

                      double res = v1 * v2;
                      exibirResultado(
                        context,
                        "Resultado: " + res.toStringAsFixed(2)
                      );
                    });

                  },
                ),
                SizedBox(width: 30),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60,60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('÷'),
                  onPressed: (){
                    //ação ao pressionar o botão
                    setState(() {
                      double v1 = double.parse(txtValor1.text);
                      double v2 = double.parse(txtValor2.text);

                      double res = v1 / v2;
                      exibirResultado(
                        context,
                        "Resultado: " + res.toStringAsFixed(2)
                      );
                    });

                  },
                )
              ]
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60,60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('LIMPAR'),
                  onPressed: (){
                    //ação ao pressionar o botão
                    setState(() {
                      txtValor1.clear();
                      txtValor2.clear();
                    });

                  },
                )
              ]
            )
          ],

          )
        ),
    );
  }
}
