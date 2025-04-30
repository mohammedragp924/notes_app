import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container();
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 29, 215, 240),
        child: Icon(Icons.add, color: Colors.white, size: 30.0),
      ),
      body: const NotesViewBody(),
    );
  }
}
