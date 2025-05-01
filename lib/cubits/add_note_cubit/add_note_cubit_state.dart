part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaliure extends AddNoteState {
  final String errorMessage;

  AddNoteFaliure(this.errorMessage);
}
