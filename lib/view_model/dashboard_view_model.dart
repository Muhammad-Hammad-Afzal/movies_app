import 'dart:convert';
import 'package:firestore_data_store/models/all_movies/movies.dart';
import 'package:firestore_data_store/network/app_urls.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../utils/utils.dart';



final list = StateProvider<List<Movies>>((ref) => []);

class DashboardViewModel{


  Future<List<Movies>> getAllMovies(context, WidgetRef ref)async{
    List<Movies> newList = [];

    // * Hit APi
    var response = await http.get(
        Uri.parse(AppUrls.baseUrl),
        headers: {
          "x-rapidapi-key": AppUrls.apiKey
        });
    var data = jsonDecode(response.body)  ;

    // * Clear List t o avoid duplication
    ref.read(list.notifier).state.clear();
    newList.clear();

    // * print Api Response
    if (kDebugMode) {
      print('Status Code -> ${response.statusCode}');
      print('Response -> ${response.body}');
    }


    if(response.statusCode == 200){
      for(var i in data){
        newList.add(Movies.fromJson(i));
      }

      ref.read(list.notifier).state = newList;
      return ref.watch(list);
    }

    else{
      Utils().showSnackBar(context, "Please try again");
      return throw Exception();
    }


  }
}
