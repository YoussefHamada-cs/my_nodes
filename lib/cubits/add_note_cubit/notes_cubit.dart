import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/constent.dart';
import 'package:my_notes/models/note_model.dart';
//import 'package:meta/meta.dart';

import 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try{
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    emit(AddNotesSuccess());
    await notesBox.add(note);
    }catch(e){
    AddNotesFailure(e.toString());}
 

  }
}
