part of 'numbercubit_cubit.dart';

abstract class NumbercubitState extends Equatable {
  const NumbercubitState();
  
  @override
  List<Object> get props => [];
}

class NumbercubitInitial extends NumbercubitState {}

class NumbercubitLoading extends NumbercubitState {}

class NumbercubitLoaded extends NumbercubitState {
// get list
  final NumberAPI numbersAPI;
  NumbercubitLoaded({required this.numbersAPI});
 @override
  List<Object> get props => [numbersAPI];

// get class
//   final NumberAPI numberAPI;
//   NumbercubitLoaded({required this.numberAPI});
//   @override
//   List<Object> get props => [numberAPI];
}

class NumbercubitError extends NumbercubitState {
  final Failure failure;

  NumbercubitError({required this.failure});
  @override
  List<Object> get props => [failure];
}
