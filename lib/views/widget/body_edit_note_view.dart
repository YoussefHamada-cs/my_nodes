import 'package:flutter/material.dart';

class BodyEditNoteView extends StatelessWidget {
  const BodyEditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'enter your notes',
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}