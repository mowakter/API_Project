import 'dart:developer';

import 'package:api_project/service/note.dart';
import 'package:flutter/material.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {

  List noteList = [];


  fetchNoteData()async{
    var data = await NoteService().getNoteDAta();
    log("==AA: ${data}==");
    if(data != null){
      noteList.addAll(data);
      log("===${noteList.length}");
    }


  }

  @override
  void initState() {
    fetchNoteData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Note List"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note Title",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Text("Note Title"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
