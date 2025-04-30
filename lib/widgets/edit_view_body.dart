import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: CustomAppBar(title: 'Edit Note', icon: Icons.check),
              ),
              SizedBox(height: 30),
              CustomTextField(hintText: 'title', maxLines: 1,),
              SizedBox(height: 16),
              CustomTextField(hintText: 'content', maxLines: 5),
            ],
          ),
        ),
      ],
    );
  }
}
