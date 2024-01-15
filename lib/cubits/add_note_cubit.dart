import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_moddel.dart';

part 'notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLodding());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
