import 'package:uuid/uuid.dart';

class TodoModel {
  final String id;
  final String title;
  final String? description;
  final DateTime date;

  TodoModel({
    String? cId,
    required this.title,
    this.description,
    DateTime? cDate,
  })  : id = cId ??
            const Uuid()
                .v4(), //se o id for null vai recer o Uuid criando um identificador aletorio
        date = cDate ?? DateTime.now(); //se nao informar vai a data atual

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        cId: map['id'],
        title: map['title'],
        description: map['description'],
        cDate: DateTime.fromMillisecondsSinceEpoch(
          map['date'],
        ));
  }
}
