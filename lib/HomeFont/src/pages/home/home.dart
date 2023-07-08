import 'package:Boi_Tonongo/HomeFont/src/pages/home/widget/category.dart';
import 'package:Boi_Tonongo/HomeFont/src/pages/home/widget/custom_app_bar.dart';
import 'package:Boi_Tonongo/HomeFont/src/pages/home/widget/movie_header.dart';
import 'package:Boi_Tonongo/HomeFont/src/pages/home/widget/trending_movies.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  const Home({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const CustomAppBar(),
          MovieHeader(),
          Category(),
          TrendingMovies(),
        ],
      ),
    );
  }
}
