import 'package:flutter/material.dart';
import 'package:lista_tarefas/shared/models/todo_model.dart';

class TodoTitleAndDescriptionWidget extends StatelessWidget {
  final TodoModel todo;
  const TodoTitleAndDescriptionWidget(this.todo,{super.key});

  @override
  Widget build(BuildContext context) {
    //aqui utilizo o expanded para que o titulo e a descrição ocupe todo espaço restante apos o checkbox
    return Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // colocar no início os widget da coluna, no caso o titulo e descrição
        children: [
        Text(todo.title, style: const TextStyle(
          color: Colors.amber
        ),),
        if (todo.description != null)
        Text(todo.description!,style: const TextStyle(
          color: Colors.white
        ),),
      ],
    ));
  }
}
