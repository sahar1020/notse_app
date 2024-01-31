import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cibit_cubit.dart';
import 'package:notes_app/models/note_moddel.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body:  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            onPressed:(){
              widget.note.title=title ?? widget.note.title;
              widget.note.subTitle=content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCibitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
        const SizedBox(height: 50,),
          CustomTextField(
            onChanged: (value){
              title=value;
            },
            hint: widget.note.title),
      const SizedBox(height: 16 ,),
           CustomTextField(
             onChanged: (value){
              content=value;
            },
            hint: widget.note.subTitle, maxlines: 5,)
        ],
      ),
    )
    );
  }
}