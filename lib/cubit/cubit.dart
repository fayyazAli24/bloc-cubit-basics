import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit():super(0);

  void increment(){
    emit(state +1);
  }
}class IncrementCubit extends Cubit<int>{
  IncrementCubit():super(0);

  void increment(){
    emit(state +1);
  }
}