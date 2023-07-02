import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final String audioUrl;
  final String genre;
  final  onTap;
  final bool isLoved;

  const CustomListTile({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.audioUrl,
    required this.genre,
    this.onTap,
    this.isLoved = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("Genre: $genre",style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    textBaseline: TextBaseline.alphabetic,


                  ),),
                  Text(author),

                ],
              ),
            ),
            const SizedBox(width: 10),

            IconButton(
              onPressed: () {
                // Toggle the isLoved property when the love icon is clicked
                onTap();
              },
              icon: Icon(
                isLoved ? Icons.play_circle : Icons.playlist_add_rounded,
                color: isLoved ? Colors.red : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
