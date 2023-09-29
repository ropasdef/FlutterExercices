//o modelo de dados é utilizado para estruturar as informações do App na forma de objetos 

class Tarefa{
  String titulo;
  String descricao;

  Tarefa(this.titulo,this.descricao);

  //gerar tarefas aleatorias
  static List<Tarefa> gerarTarefas(){
    List<Tarefa> lista = [];
    for(int i = 1; i <= 50; i++){
      lista.add(
        Tarefa(
          'Titulo $i',
          'Pellentesque libero mi, feugiat in porttitor in, pellentesque at urna.'
        ),
      );
    }
    return lista;
  }
}