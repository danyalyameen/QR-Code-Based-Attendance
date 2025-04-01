import 'package:bloc/bloc.dart';
import 'package:qr_cdoe_based_attendance/Counter/Bloc/counter_events.dart';
import 'package:qr_cdoe_based_attendance/Counter/Bloc/counter_states.dart';
import 'package:qr_cdoe_based_attendance/Counter/Model/counter_model.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc() : super(CounterStates(counterModel: CounterModel(count: 0))) {
    on<IncrementEvent>((event, emit) {
      final updatedCounter = state.counterModel.copyWith(
        state.counterModel.count + 1,
      );
      emit(CounterStates(counterModel: updatedCounter));
    });
  }
}
