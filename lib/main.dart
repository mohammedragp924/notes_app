import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: NotesView(),
      ),
    );
  }
}
