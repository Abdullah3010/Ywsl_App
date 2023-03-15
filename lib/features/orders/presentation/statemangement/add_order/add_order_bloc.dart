import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

part 'add_order_event.dart';
part 'add_order_state.dart';

class AddOrderBloc extends Bloc<AddOrderEvent, AddOrderState> {
  TextEditingController weight = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController type = TextEditingController();

  AddOrderBloc() : super(AddOrderInitial()) {
    on<AddOrderEvent>((event, emit) async {
      if (event is PickImageEvent) {
        emit(PickImageLoading());
        XFile? image = await ImagePicker().pickImage(source: event.source);
        if (image != null) {
          emit(PickImageLoaded(image: image));
        } else {
          emit(PickImageError(message: 'No image selected'));
        }
      }
    });
  }
}
