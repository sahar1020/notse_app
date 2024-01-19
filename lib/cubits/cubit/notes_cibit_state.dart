part of 'notes_cibit_cubit.dart';

@immutable
sealed class NotesCibitState {}

final class NotesCibitInitial extends NotesCibitState {}
final class NotesCibitSuccess extends NotesCibitState {
  final List<NoteModel>notes;

  NotesCibitSuccess(this.notes);
}

