import 'package:flutter/material.dart';

import '../../../models/books.dart';
import '../../detail/detail.dart';
import 'category_title.dart';


class Category extends StatelessWidget {
  Category({Key? key, }) : super(key: key);
  final List<Books> booksRecommendedList = Books.generateCategoryList();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        const CategoryTitle(title: "Recommended Books"),
        SizedBox(
          height: _size.width > 900 ? 360 : 250,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: booksRecommendedList.length,
            separatorBuilder: (_, index) => const SizedBox(
              width: 5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      books: booksRecommendedList[index],

                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      width: _size.width > 800 ? 240 : 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Hero(
                                tag: booksRecommendedList[index],
                                child: Image.asset(
                                  'images/Homeimages/' +
                                      booksRecommendedList[index]
                                          .imgUrl
                                          .toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              booksRecommendedList[index].name.toString(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            booksRecommendedList[index].auther.toString(),
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        left: 5,
                        top: 5,
                        child: _buildStar(
                            booksRecommendedList[index].score.toString()))
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildStar(String star) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.orange[300],
            size: 14,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            star,
            style: const TextStyle(color: Colors.white70),
          )
        ],
      ),
    );
  }
}
