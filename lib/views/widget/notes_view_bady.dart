import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/node_item.dart';

class NotesViewbady extends StatelessWidget {
  const NotesViewbady({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return NoteItem();
        });
  }
}
