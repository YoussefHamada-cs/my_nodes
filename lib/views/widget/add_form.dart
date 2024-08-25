import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/add_note_cubit/notes_cubit.dart';
import 'package:my_notes/models/note_model.dart';

class AddForm extends StatefulWidget {
  const AddForm({
    super.key,
  });

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
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
              if (value?.isEmpty ?? true) {
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
              if (value?.isEmpty ?? true) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          BlocProvider(
            create: (context) => AddNotesCubit(),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.black54.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: const Text('Add'),
            ),
          )
        ],
      ),
    );
  }
}
