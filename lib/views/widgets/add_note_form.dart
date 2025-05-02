import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_buton.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextField(
            onSaved: (value) {
              supTitle = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    // Save the note to the database or perform any action
                    var noteModel = NoteModel(
                      title: title!,
                      suptitle: supTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
