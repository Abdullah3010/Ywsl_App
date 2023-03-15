part of 'add_order_bloc.dart';

abstract class AddOrderState extends Equatable {
  const AddOrderState();
  
  @override
  List<Object> get props => [];
}

class AddOrderInitial extends AddOrderState {}

class PickImageLoading extends AddOrderState {}

class PickImageLoaded extends AddOrderState {
  final XFile? image;

  const PickImageLoaded({required this.image});
}

class PickImageError extends AddOrderState {
  final String message;

  const PickImageError({required this.message});
}
