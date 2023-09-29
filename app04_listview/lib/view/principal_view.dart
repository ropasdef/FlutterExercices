// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/tarefa.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //Declaração da lista de Tarefas
  List<Tarefa> lista = [];

  @override
  void initState() {
    super.initState();
    //Inicialização da lista
    lista = Tarefa.gerarTarefas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.task_alt_outlined),
                title: Text(lista[position].titulo),
                subtitle: Text(lista[position].descricao),
                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(position);
                    });
                  },
                ),
                hoverColor: Color.fromARGB(88, 110, 38, 233),
                onTap: () {
                  //retornar tarefa selecionada pelo usuario
                  Tarefa t = lista[position];

                  //enviar tarefa selecionada para tela de DetalhesView
                  Navigator.pushNamed(
                    context,
                    'detalhes',
                    arguments: t
                  );
                }
              ),
            );
          },
        ),
      ),
    );
  }
}
