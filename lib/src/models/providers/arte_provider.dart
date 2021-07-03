import 'package:appi/src/models/arte_model.dart';
import 'package:dio/dio.dart';

class ArteProvider{ 
  final _url = "https://api.artic.edu/api/v1/artworks?page=2&limit=100";
  final _http = Dio();

  Future<List<ArteModel>> obtenerObras()async{
  
  final response = await _http.get(_url);
  List<dynamic> data = response.data;
  return data.map((obra) => ArteModel.fromMapJson(obra)).toList();
 
  }
}