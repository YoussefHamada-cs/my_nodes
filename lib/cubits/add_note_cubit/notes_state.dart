import 'package:flutter/material.dart';

@immutable
abstract class NotesState {}

class AddNotesInitial extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSuccess extends NotesState {}

class AddNotesFailure extends NotesState {
  final String errormassage;
  AddNotesFailure(this.errormassage);
}
