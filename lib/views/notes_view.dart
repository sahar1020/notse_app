import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_Add_note_bottom_sheet.dart';

import 'package:notes_app/views/widgets/custom_note_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){

        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          context: context, builder: (context){
          return const AddNoteBottomSheet();
        });
      },
      ),
      body:const NotesViewBody(),
    );
  }
}

