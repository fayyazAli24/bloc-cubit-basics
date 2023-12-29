import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

class IncPage extends StatelessWidget {
  const IncPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterCubit.increment();
        },
        child: Icon(Icons.exposure_plus_1_rounded),
      ),
    );
  }
}
