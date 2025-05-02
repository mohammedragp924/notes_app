import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observe.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox(kNotesBox);

  Bloc.observer = SimpleBlocObserve();

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
