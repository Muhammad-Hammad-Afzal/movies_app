import 'dart:convert';
import 'package:firestore_data_store/models/movie_by_id/movie_by_id.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../network/app_urls.dart';
import '../utils/utils.dart';


class MoviesDetailViewModel {
  Future<MoviesById> detail(context, String movieId)async{

    // * Hit APi
    var response = await http.get(
        Uri.parse(AppUrls.movieDetail + movieId),
        headers: {
          "x-rapidapi-key": AppUrls.apiKey
        });
    var data = jsonDecode(response.body)  ;


    // * print Api Response
    if (kDebugMode) {
      print('Status Code -> ${response.statusCode}');
      print('Response -> ${response.body}');
    }


    if(response.statusCode == 200){

      return MoviesById.fromJson(data);
    }

    else{
      Utils().showSnackBar(context, "Please try again");
      return throw Exception();
    }


  }
}