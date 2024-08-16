import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/node_item.dart';

class Notes_item_listview extends StatelessWidget {
  const Notes_item_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(itemBuilder: (context, index) {
        return NoteItem();
      }),
    );
  }
}
