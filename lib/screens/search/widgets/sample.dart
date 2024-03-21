

import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

function()async{
 const uri='jhjdh';
 final value={
  'name':'jibil',
  "age":'22'
 };
 final ur ='hduh';
  final response = await http.post(Uri.parse(uri),body: jsonEncode(value));
  
}