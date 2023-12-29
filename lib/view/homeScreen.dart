import 'package:block/bloc/counterBlock.dart';
import 'package:block/cubit/counterCubit.dart';
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
            return Text(counterBloc.state.toString(),style: TextStyle(fontSize: 24),);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IncPage()));
        },
        child: Icon(Icons.navigate_next),
      ),

    );
  }
}
