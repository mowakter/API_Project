  import 'dart:convert';

import 'package:http/http.dart' as http;

class CountriesService{
  getCountries()async{
   var url = Uri.parse("https://fakeapi.extendsclass.com/countries");
   var reponse = await http.get(url);
   if(reponse.statusCode == 200){
     return jsonDecode(reponse.body);
   }
  }
}