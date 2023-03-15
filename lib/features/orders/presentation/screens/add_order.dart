import 'package:flutter/material.dart';
import 'package:ywsl_app/shared/widget/input_field.dart';
import 'package:ywsl_app/shared/widget/rounded_botton.dart';

import '../widgets/image_picker_dialog.dart';

class AddOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Order'),
      ),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputField(
                    label: 'From',
                    width: MediaQuery.of(context).size.width * 0.35,
                    suffixIcon: const Icon(
                      Icons.location_on_outlined,
                    ),
                  ),
                  InputField(
                    label: 'To',
                    width: MediaQuery.of(context).size.width * 0.35,
                    suffixIcon: Icon(Icons.location_on_outlined),
                  ),
                ],
              ),
              InputField(
                label: 'Image',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.camera_alt_outlined),
                  onPressed: () {
                    showMyDialog(context);
                  },
                ),
              ),
              InputField(
                label: 'Type',
              ),
              InputField(
                label: 'Weight',
              ),
              InputField(
                label: 'Quantity',
              ),
              InputField(
                label: 'Description',
              ),
              RoundedButton(
                onPressed: () {},
                child: const Text('Add Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: ImagePickerDialog(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
    },
  );
}
