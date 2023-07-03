import 'package:Supkothar_Somoy/HomeFont/src/models/books.dart';
import 'package:Supkothar_Somoy/HomeFont/src/pages/detail/detail.dart';
import 'package:Supkothar_Somoy/HomeFont/src/pages/home/widget/category_title.dart';
import 'package:Supkothar_Somoy/HomeFont/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';


class TrendingMovies extends StatelessWidget {
  TrendingMovies({Key? key, })
      : super(key: key);
  final List<Books> moviesTrendingList = Books.generateItemsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle(title: "Trending Books"),
        ListView.separated(
          padding: const EdgeInsets.all(20),
          primary: false,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: moviesTrendingList.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(

                    books: moviesTrendingList[index],
                  ),
                ),
              ),
              child: SizedBox(
                height: 120,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        tag: moviesTrendingList[index],
                        child: Image.asset(
                          'images/Homeimages/' +
                              moviesTrendingList[index].imgUrl.toString(),
                          fit: BoxFit.cover,
                          width: 90,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            moviesTrendingList[index].name.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            moviesTrendingList[index].desc.toString(),
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            moviesTrendingList[index].type!.join(", "),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
