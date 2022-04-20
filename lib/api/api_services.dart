import 'dart:convert';
import 'package:flutter_apps/model/response_post.dart';
import 'package:flutter_apps/model/tourism_place.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future <TourismResult> getListTourism() async{
    final response = await http.get(Uri.parse('http://192.168.1.104/apiflutter/api.php'));
    if (response.statusCode == 200){
      return TourismResult.fromJson(json.decode(response.body));
    }else{
      throw Exception("Data tidak ditemukan !");
    }
  }
}