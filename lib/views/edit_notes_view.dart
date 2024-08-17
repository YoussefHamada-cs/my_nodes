import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/body_edit_note_view.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Notes'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.check))],
      ),
      body: const BodyEditNoteView(),
    );
  }
}
