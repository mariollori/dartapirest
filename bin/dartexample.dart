import 'dart:convert';

import 'package:dartexample/dartexample.dart' as dartexample;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'persona_modal.dart';


void main(List<String> arguments) {

  //   final url = Uri.parse('https://restcountries.com/v2/all');
  // http.get(url).then((value){
  //    final body = convert.jsonDecode(value.body);
  //    for (var pais in body) {
  //       print(pais['name']);
       
  //    }
  // }
  // );
 



//   final url = Uri.parse('http://localhost:5050/persona/getpersonas');
//   http.get(url).then((value){
//       final body = convert.jsonDecode(value.body);
//      for (var persona in body) {
//         print(persona);
       
//      }
//   }
//   );
// //  

   final url = Uri.parse('http://localhost:5050/persona/getpersonas');
  http.get(url).then((value){
      final body = holaFromJson(value.body);
     for (var persona in body) {
        print(persona.apellidos);
       
     }
  }
  );
 
 
}
