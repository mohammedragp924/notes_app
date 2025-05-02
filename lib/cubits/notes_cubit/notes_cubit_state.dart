part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel>? notes;
  
  NotesCubitSuccess({this.notes});

  @override
  List<Object?> get props => [notes];
}