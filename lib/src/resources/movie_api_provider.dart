import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  Dio dio = new Dio();

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response =  await dio.get("http://api.themoviedb.org/3/movie/popular?api_key=802b2c4b88ea1183e50e6b285a27696e");
    print(response.data.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(response.data);
      
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}