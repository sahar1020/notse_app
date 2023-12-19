part of 'add_note_cubit.dart';

@immutable

abstract class NotesState{}

class AddNotesInitial extends NotesState{}
class AddNotesLodding extends NotesState{}
class AddNotesSuccess extends NotesState{}
class AddNotesFailure extends NotesState{
  final String errMessage;

  AddNotesFailure(this.errMessage);

}

