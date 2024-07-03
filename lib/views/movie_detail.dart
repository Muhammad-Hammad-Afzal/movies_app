import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/app_colors.dart';
import '../view_model/movies_detail_view_model.dart';

class MovieDetail extends ConsumerWidget {
  final String movieId;
  const MovieDetail({super.key,
    required this.movieId

  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(' Detail'),
          centerTitle: false,
          foregroundColor: AppColors.black,
        ),

      body: FutureBuilder(
          future: MoviesDetailViewModel().detail(context, movieId),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(color: AppColors.indigo));
            }

            else if(snapshot.hasError){
              return Center(child: Text('Internal Error Occurred!', style: TextStyle(
               fontSize: width * .05,
               fontWeight: FontWeight.bold,
               color: AppColors.red
              )));
            }

            else{
              var data = snapshot.data;

              return Column(

                children: [

                  // * Image
                  FadeInImage(
                    placeholder: Image.asset('assets/loading.gif').image,
                    image: Image.network(data!.image, fit: BoxFit.cover).image,
                  ),
                  SizedBox(height: height * .02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(data.year.toString()),
                      SizedBox(
                        width: width * .005,
                        child: Divider(thickness: width * .04, color: AppColors.black),
                      ),


                      Text(data.director.toString()),
                      SizedBox(
                        width: width * .005,
                        child: Divider(thickness: width * .04, color: AppColors.black),
                      ),

                      const Icon(Icons.star, color: AppColors.amber),
                      Text(data.rating.toString())
                    ],
                  ),

                  Text('Title: ${data.title.toString()}'),
                  Text('Rank: ${data.rank.toString()}'),
                ],
              );
            }
          },
      ),

    );
  }
}
