import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/todoModel.dart';

class TodoCubit extends Cubit<List<Todo>>{
  TodoCubit():super([]);

  void addTodo(String title){

    Todo todo = Todo(name: title, dateTime: DateTime.now());
    state.add(todo);

    emit([...state]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print("the error is  $error" );
  }

}