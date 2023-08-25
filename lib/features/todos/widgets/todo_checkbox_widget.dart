import 'package:flutter/material.dart';
import 'package:lista_tarefas/shared/models/todo_model.dart';

class TodoCheckboxWidget extends StatelessWidget {
  final TodoModel todo; //chamar class TodoModel

  const TodoCheckboxWidget(this.todo,
      {super.key}); //adicionar this.todo no construtor.

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: (bool? isDone) => print(isDone),
    );
  }
}
