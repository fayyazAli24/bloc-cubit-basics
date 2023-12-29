import 'package:flutter_bloc/flutter_bloc.dart';
part 'counterEvent.dart';



class CounterBloc extends Bloc<EventClass, int> {
  CounterBloc() : super(0) {

    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      emit(state-1);
    });
  }
}
