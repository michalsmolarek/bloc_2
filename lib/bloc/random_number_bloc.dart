import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_number_event.dart';
part 'random_number_state.dart';

class RandomNumberBloc extends Bloc<RandomNumberEvent, RandomNumberState> {
  RandomNumberBloc() : super(RandomNumberInitial()) {
    on<RandomNumberEvent>((event, emit) {});
  }

  @override
  Stream<RandomNumberState> mapEventToState(RandomNumberEvent event) async* {
    // oczekiwanie na event
    if (event is GetRandomNumber) {
      yield RandomNumberLoading();

      // wygenerowanie random numerka
      final randomNumber = Random().nextInt(1000);

      // delay
      await Future.delayed(const Duration(seconds: 2));

      // stan na loaded i przekazanie liczy
      yield RandomNumberLoaded(randomNumber);
    }
  }
}
