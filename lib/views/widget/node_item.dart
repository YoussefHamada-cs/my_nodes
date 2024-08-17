import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_notes/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.amber[400], borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            ListTile(
              title: const Text(
                'flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'build your notes with youssef hamada',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 23,
                  )),
            ),
            Positioned(
                bottom: 12,
                right: 24,
                child: Text(
                  'hello in my app',
                  style: TextStyle(color: Colors.black.withOpacity(.4)),
                )),
            Positioned(
                bottom: 0,
                child: MaterialButton(
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return EditNotesView();
                      },
                    ));
                  },
                  child: Text('Edit'),
                ))
          ],
        ),
      ),
    );
  }
}
