import 'package:block/cubit/counterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counterBlock.dart';
import 'view/homeScreen.dart';

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
      ] ,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}


