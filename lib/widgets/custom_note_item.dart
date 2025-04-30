import 'package:flutter/material.dart';
// ignore_for_file: deprecated_member_use

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFffcc80),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            bottom: 20.0,
            right: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(right: 0.0),
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Building a note app with Flutter is fun!',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),

                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.black, size: 30),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'April 30,2025',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
