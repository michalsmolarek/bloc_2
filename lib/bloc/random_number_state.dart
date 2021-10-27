part of 'random_number_bloc.dart';

abstract class RandomNumberState extends Equatable {
  const RandomNumberState();

  @override
  List<Object> get props => [];
}

class RandomNumberInitial extends RandomNumberState {}

class RandomNumberLoading extends RandomNumberState {}

class RandomNumberLoaded extends RandomNumberState {
  final int randomNumber;

  const RandomNumberLoaded(this.randomNumber);

  @override
  List<Object> get props => [randomNumber];
}
