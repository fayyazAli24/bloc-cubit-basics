import 'package:block/cubit/practice/counterCubit.dart';
import 'package:block/cubit/todoCubit.dart';
import 'package:block/view/totoApp/todoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counterBlock.dart';
import 'view/practiceBasics/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> CounterCubit()),
        BlocProvider(create: (_)=> CounterBloc()),
        BlocProvider(create: (_)=> TodoCubit()),
      ] ,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TodoScreen(),
      ),
    );
  }
}


