import 'package:flutter/material.dart';
import '../../../../core/app_color.dart';
import '../../widgets/text_form_field_widget.dart';

class RowTextFormFieldWidget extends StatelessWidget {
  const RowTextFormFieldWidget({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 25,
          width: 100,
          child: Text(
            text,
          ),
        ),
        SizedBox(
          width: 100,
          height: 45,
          child: TextFormFieldWidget(
            fillColor: kWhite,
            hintText: '',
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
