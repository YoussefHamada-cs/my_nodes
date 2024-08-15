import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/notes_view_bady.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body:const NotesViewbady() ,
    );
  }
}
