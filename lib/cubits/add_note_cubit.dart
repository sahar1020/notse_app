import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_moddel.dart';

part 'notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());
  //bool isLoading = false;
  Color color=const Color(0xff8d5a97);
  addNote(NoteModel note) async {
   // isLoading = true;
   note.color=color.value;
    emit(AddNotesLodding());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
     // isLoading = false;
     
      await noteBox.add(note);
       emit(AddNotesSuccess());
    } catch (e) {
      //isLoading = false;
      emit(AddNotesFailure(e.toString()));
    }
  }
}
