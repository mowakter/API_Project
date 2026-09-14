import 'dart:developer';

import 'package:http/http.dart'  as http;

class NoteService{
  getNoteDAta()async{
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var response = await http.get(url);

    if (response.statusCode == 200){
     log("----${response.body}---");
    }
  }
  getNoteDetailsDAta()async{
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/6");
    var response = await http.get(url);

    if (response.statusCode == 200){
      log("----${response.body}---");
    }else if(response.statusCode == 404){
      log("Data Already Deleted or  Wrong ID");
    }
  }
}