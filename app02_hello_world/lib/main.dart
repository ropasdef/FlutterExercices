
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        title: 'Hello World',
        home: PrincipalView(),
      ),
    )
  );

}

//TELA PRINCIPAL
class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello Fatec'),
      ),
    );
  }
}