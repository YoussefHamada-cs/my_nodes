import 'package:flutter/material.dart';

class BodyEditNoteView extends StatelessWidget {
  const BodyEditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'enter title',
              labelStyle: const TextStyle(color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              //  filled: true,
              //  fillColor: Colors.grey,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'enter your edit notes',
              labelStyle: const TextStyle(color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              // filled: true,
              // fillColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
