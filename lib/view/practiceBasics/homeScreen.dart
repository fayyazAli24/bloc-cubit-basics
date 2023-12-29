import 'package:block/bloc/counterBlock.dart';
import 'package:block/cubit/practice/counterCubit.dart';
import 'package:block/view/totoApp/addTodoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'incPage.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(

      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, counter) {
            return Text(counterBloc.state.toString(),style: const TextStyle(fontSize: 24),);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const IncPage()));
        },
        child: const Icon(Icons.navigate_next),
      ),

    );
  }
}
