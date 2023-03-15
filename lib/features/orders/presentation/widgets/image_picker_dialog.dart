import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ywsl_app/features/orders/presentation/statemangement/add_order/add_order_bloc.dart';
import 'package:ywsl_app/features/orders/presentation/statemangement/orders/orders_bloc.dart';

import '../../../../shared/widget/glass_container.dart';
import '../../../../shared/widget/rounded_botton.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddOrderBloc>(
      create: (context) => AddOrderBloc(),
      child: BlocConsumer<AddOrderBloc, AddOrderState>(
        listener: (context, state) {
          if (state is PickImageLoaded) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          final bloc = BlocProvider.of<AddOrderBloc>(context);
          return GlassContainer(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    onPressed: () async {
                      bloc.add(PickImageEvent(source: ImageSource.gallery));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.image),
                          Text(
                            'Gallery',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                    onPressed: () async {
                      bloc.add(PickImageEvent(source: ImageSource.camera));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.camera),
                          Text(
                            'Camera',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
