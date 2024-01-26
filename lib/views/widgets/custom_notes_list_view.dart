import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cibit_cubit.dart';
import 'package:notes_app/models/note_moddel.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCibitCubit,NotesCibitState>(
      builder: (context, state) {
        BlocProvider.of<NotesCibitCubit>(context).fetchAllNotes();
        List<NoteModel> notes=BlocProvider.of<NotesCibitCubit>(context).notes! ;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
               padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(note: notes[index],),
                );
              }),
        );
      },
    );
  }
}
