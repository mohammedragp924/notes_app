import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buton.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'content', maxLines: 5),
            SizedBox(height: 30),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
