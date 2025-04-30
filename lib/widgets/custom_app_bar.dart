import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';
// ignore_for_file: deprecated_member_use

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: Theme.of(context).textTheme.headlineMedium),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
