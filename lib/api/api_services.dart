import 'dart:convert';
import 'package:flutter_apps/model/tourism_place.dart';
import 'package:http/http.dart' as http;

class ApiService{
  final String _baseUrl = 'http://192.168.1.104/server_inventory/index.php/api'; //ip merupakan ip lokal

  Future <TourismResult> getListTourism() async{
    final response = await http.get(Uri.parse('$_baseUrl/gettourism'));
    if (response.statusCode == 200){
      return TourismResult.fromJson(json.decode(response.body));
    }else{
      throw Exception("Data tidak ditemukan !");
    }

  }
}