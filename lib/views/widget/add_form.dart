import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({
    super.key,
  });

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final GlobalKey<FormState> form = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextFormField(
          onSaved: (newValue) {
            title = newValue;
          },
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
          onSaved: (newValue) {
            subtitle = newValue;
          },
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
          onPressed: () {
            
            if (form.currentState!.validate()) {
              form.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },
          child: const Text('Add'),
        )
      ],
    );
  }
}
