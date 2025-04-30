import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: CustomAppBar(title: 'Edit Note', icon: Icons.check),
        ),
      ],
    );
  }
}
