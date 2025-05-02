import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    final notesCubit = NotesCubitCubit()..fetchAllNotes();
    final addNoteCubit = AddNoteCubit();

    return MultiBlocProvider(
      providers: [
        BlocProvider<NotesCubitCubit>.value(value: notesCubit),
        BlocProvider<AddNoteCubit>.value(value: addNoteCubit),
      ],
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
                builder: (_) {
                  return BlocProvider<AddNoteCubit>.value(
                    value: addNoteCubit,
                    child: const AddNoteBottomSheet(),
                  );
                },
              );
            },
            backgroundColor: kPrimaryColor,
            child: const Icon(Icons.add, color: Colors.black, size: 30.0),
          ),
        ),
        body: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              notesCubit.fetchAllNotes();
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('تمت إضافة الملاحظة بنجاح'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                ),
              );
            }
          },
          child: const NotesViewBody(),
        ),
      ),
    );
  }
}
