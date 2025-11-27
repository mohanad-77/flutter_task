import 'package:flutter/material.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'عنصر 1',
      'عنصر 2',
      'عنصر 3',
      'عنصر 4',
      'عنصر 5',
    ];

    return Scaffold(
      body:

      ListView(
        children: items.map((item) {
          return ListTile(
            title: Text(item),
          );
        }).toList(),
      ),

    );
  }
}


