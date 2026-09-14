import 'package:api_project/service/note.dart';
import 'package:flutter/material.dart';

class NotePractice extends StatefulWidget {
  const NotePractice({super.key});

  @override
  State<NotePractice> createState() => _NotePracticeState();
}

class _NotePracticeState extends State<NotePractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Note Practice"),centerTitle: true,),
      body: Column(
        spacing: 20,
        children: [
          ElevatedButton(onPressed: (){
            NoteService().getNoteDAta();
          }, child: Text("Get Note")),
          ElevatedButton(onPressed: (){
            NoteService().getNoteDetailsDAta();
          }, child: Text("Note Details")),
          ElevatedButton(onPressed: (){
            NoteService().createNoteData();
          }, child: Text("Note Add")),
          ElevatedButton(onPressed: (){
            NoteService().getNoteDeleteDAta();
          }, child: Text("Note Delete")),
        ],
      ),

    );
  }
}
