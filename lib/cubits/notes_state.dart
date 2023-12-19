part of 'add_note_cubit.dart';

@immutable
abstract class AddNotesState{}

class AddNotesInitial extends AddNotesState{}

class AddNotesLodding extends AddNotesState{}

class AddNotesSuccess extends AddNotesState{}

class AddNotesFailure extends AddNotesState{
  final String errMessage;

  AddNotesFailure(this.errMessage);

}

