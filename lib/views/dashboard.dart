import 'package:firestore_data_store/res/component/movie_card.dart';
import 'package:firestore_data_store/utils/app_colors.dart';
import 'package:firestore_data_store/view_model/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    DashboardViewModel().getAllMovies(context, ref);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: false,
        foregroundColor: AppColors.black,
      ),

      body: Consumer(
        builder: (context, ref, child){

          return ref.watch(list).isEmpty
              ? const Center(child: CircularProgressIndicator(color: AppColors.indigo))
              : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Top 100 movies', style: TextStyle(fontSize: width * .05, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .01),

                      child: GridView.builder(
                      itemCount: ref.watch(list).length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: width * .01,
                          childAspectRatio: 2/3),
                      itemBuilder: (context, index){
                        var data = ref.watch(list)[index];


                        return MovieCard(imageUrl: data.image, movieId: data.id);
                      },),
                    ),
                  ),
                ],
              );
        }),
    );
  }
}
