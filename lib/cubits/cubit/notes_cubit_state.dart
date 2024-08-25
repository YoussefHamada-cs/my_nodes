part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccess({required this.notes});
}

final class NotesCubitFailure extends NotesCubitState {
  late final String errormassage;
  NotesCubitFailure(this.errormassage);
// ignore: empty_constructor_bodies
}
