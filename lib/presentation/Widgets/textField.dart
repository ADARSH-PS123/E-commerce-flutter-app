import 'package:ecommerce/core/colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Function(String value) onchanged;
  final String ? Function(String ? value) validator;
  final Widget imageWidget;
  final String fieldName;
  final  int ? maxLines;
  final String ? initialValue;

  const AppTextField(
      {Key? key,
      required this.fieldName,this.initialValue,
      required this.imageWidget,
      required this.onchanged,
      this.maxLines,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines ?? 1,
      onChanged: onchanged,
      validator: validator,
      decoration: InputDecoration(
        
          label: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
               imageWidget,
                const SizedBox(
                  width: 8,
                ),
                Text(
                  fieldName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: greyColor),
                ),
              ],
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: greyColor))),
    );
  }
}
