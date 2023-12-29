import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counterBlock.dart';
import '../../cubit/practice/counterCubit.dart';

class IncPage extends StatelessWidget {
  const IncPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterBloc.add(CounterIncremented());
        },
        child: Icon(Icons.exposure_plus_1_rounded),
      ),
    );
  }
}
