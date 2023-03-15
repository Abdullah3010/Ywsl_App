part of 'add_order_bloc.dart';

abstract class AddOrderEvent extends Equatable {
  const AddOrderEvent();

  @override
  List<Object> get props => [];
}


class PickImageEvent extends AddOrderEvent {
  final ImageSource source;

  const PickImageEvent({required this.source});
}