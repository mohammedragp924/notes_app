import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                },
              );
            },
            backgroundColor: kPrimaryColor,
            child: Icon(Icons.add, color: Colors.black, size: 30.0),
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
