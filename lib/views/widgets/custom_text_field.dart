import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.maxLines,
    this.onSaved,
  });

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a $hintText';
          }
          return null;
        },
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          // hintStyle: TextStyle(color: KPrimaryColor, fontSize: 15),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
