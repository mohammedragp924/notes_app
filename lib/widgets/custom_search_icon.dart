import 'package:flutter/material.dart';
// ignore_for_file: deprecated_member_use

// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 30)),
    );
  }
}
