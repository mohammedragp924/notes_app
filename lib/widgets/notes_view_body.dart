import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_view.dart';
// ignore_for_file: deprecated_member_use

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
