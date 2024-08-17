import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_notes/views/widget/body_edit_note_view.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Notes'),
        actions: [IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.a))],
      ),
      body: BodyEditNoteView(),
    );
  }
}
