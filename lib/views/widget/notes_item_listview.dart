import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/node_item.dart';

class NotesItemListview extends StatelessWidget {
  const NotesItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(itemBuilder: (context, index) {
        return const NoteItem();
      }),
    );
  }
}
