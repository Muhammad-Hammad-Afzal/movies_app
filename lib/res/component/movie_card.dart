import 'package:firestore_data_store/views/movie_detail.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String imageUrl;
  final String movieId;

  const MovieCard({super.key,
    required this.imageUrl,
    required this.movieId,

  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MovieDetail(movieId: movieId))),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(width * .03),
              child: FadeInImage(
                  placeholder: Image.asset('assets/loading.gif').image,
                  image: Image.network(imageUrl).image)),
    );
  }
}
