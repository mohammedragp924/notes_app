import 'package:flutter/material.dart';
// ignore_for_file: deprecated_member_use


class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search, size: 30),
      ),
    );
  }
}