import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        CustomTextField(hintText: 'Title'),
        SizedBox(height: 16),
        CustomTextField(hintText: 'content', maxLines: 5),
      ],
    );
  }
}
