import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/todoCubit.dart';

class AddTodoScreen extends StatelessWidget {
   AddTodoScreen({super.key});

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final todoProvider = BlocProvider.of<TodoCubit>(context);
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration:  const InputDecoration(
                hintText: "Add here",
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          todoProvider.addTodo(textEditingController.text);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
