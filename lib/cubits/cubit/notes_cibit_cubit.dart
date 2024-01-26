import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_moddel.dart';

part 'notes_cibit_state.dart';

class NotesCibitCubit extends Cubit<NotesCibitState> {
  NotesCibitCubit() : super(NotesCibitInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNotesBox);

    notes = noteBox.values.toList();
    emit(NotesCibitSuccess());
  }
}
