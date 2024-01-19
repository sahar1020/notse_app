import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_moddel.dart';

part 'notes_cibit_state.dart';

class NotesCibitCubit extends Cubit<NotesCibitState> {
  NotesCibitCubit() : super(NotesCibitInitial());
}
