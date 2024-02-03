import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/models/note_moddel.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_botton.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey=GlobalKey(); 
  AutovalidateMode autovalidateMode =AutovalidateMode .disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
        const  SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
             title=value;
            },
            hint: 'title',
          ),
         const SizedBox(
            height: 16,
          ),
          CustomTextField(
             onSaved: (value){
             subTitle=value;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const   SizedBox(height: 32,),
         const ColorListView(),
       const   SizedBox(height: 32,),
          BlocBuilder<AddNoteCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBotton(
                      isLoding:state is AddNotesLodding ?true : false,
                      onTap: (){
                        if(formkey.currentState!.validate()){
                          formkey.currentState!.save();
                          var currentDate=DateTime.now();
                          var formattedCurrentDate=DateFormat('dd-mm-yyyy').format(currentDate);
                          var noteModel = NoteModel(title: title!, subTitle: subTitle!, date: formattedCurrentDate.toString(), color: Colors.blue.value) ; 
                          BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                        }else{
                          autovalidateMode=AutovalidateMode.always;
                        }
                      },
                    );
            },
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}

