import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class NoteService {
  getNoteDAta() async {
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      log("----${response.body}---");
      log("==>>>${jsonDecode(response.body)['data']}");
    }
  }

  getNoteDetailsDAta() async {
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/6");
    // Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/6");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      log("----${response.body}---");
    } else if (response.statusCode == 404) {
      log("Data Already Deleted or  Wrong ID");
    }
  }

  getNoteDeleteDAta() async {
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/16");
    var response = await http.delete(url);

    if (response.statusCode == 200) {
      log("----${response.body}---");
    } else if (response.statusCode == 404) {
      log("Data Already Deleted or  Wrong ID");
    }
  }

  createNoteData() async {
    Uri uri = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var res = await http.post(
      uri,
      headers: {
        "Accept": "application/json",
        "content-Type": "application/json",
      },
      body: jsonEncode({"title":"ABC","details" : "XYZ"}),
      // body: jsonEncode({"title":"ABC","details" : "XYZ"}),
    );
    if (res.statusCode == 201) {
      log("Note Create Successfully");
    } else if (res.statusCode == 422) {
      log("Title or Details Missing");
    }else{
      log("=====${res.statusCode}=====");
      log("====${res.body}====");
    }
  }
}
