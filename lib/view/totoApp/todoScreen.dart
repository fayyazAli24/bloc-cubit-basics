import 'package:block/bloc/counterBlock.dart';
import 'package:block/cubit/practice/counterCubit.dart';
import 'package:block/cubit/todoCubit.dart';
import 'package:block/models/todoModel.dart';
import 'package:block/view/totoApp/addTodoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: BlocBuilder<TodoCubit, List<Todo>>(
          builder: (context, todo) {
            return ListView.builder(
                itemCount: todo.length,
                itemBuilder: (context, index) {
                  final tempTodo = todo[index];
                  return ListTile(
                    title: Text(tempTodo.name),
                  );
                });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>  AddTodoScreen()));
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
