import 'package:bloc/bloc.dart';
//import 'package:meta/meta.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNotesInitial());
}
