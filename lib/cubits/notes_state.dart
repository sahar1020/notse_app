part of 'add_note_cubit.dart';

@immutable

abstract class NotesState{}

<<<<<<< HEAD
class AddNotesInitial extends NotesState{}
class AddNotesLodding extends NotesState{}
class AddNotesSuccess extends NotesState{}
class AddNotesFailure extends NotesState{
  final String errMessage;

  AddNotesFailure(this.errMessage);

}
=======
class NotesInitial extends NotesState{}
>>>>>>> ad6cfc1b54d0df4e625aee58c7647f8534dc6278

