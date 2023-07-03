import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'ContentShow.dart';
import '../../RequestSTf.dart';

class CHorror extends StatefulWidget {
  const CHorror({Key? key}) : super(key: key);

  @override
  State<CHorror> createState() => _CHorrorState();
}
 /// Add Strory Here ____________________________________________________________

class _CHorrorState extends State<CHorror> {
  static final List<HorrorStory> stories = [
    const HorrorStory(
      title: 'Alien Invention',
      image: 'images/HorrorCat/Alien-Invention-Tanslated-By-Anish-Das-Apu-278x430.jpg',
      WriterName: 'Anish Das Apu',
      PdfName: 'images/HorrorCat/Alien_Invention.pdf',
    ),
    const HorrorStory(
      title: 'Arek Drakulan',
      image: 'images/HorrorCat/qzx-195x296.png',
      WriterName: 'Anish Das Apu',
      PdfName: 'images/HorrorCat/Arek Drakula By Anish Das Apu   (BDeBooks.Com).pdf',
    ),
    const HorrorStory(
      title: 'Horror Seven',
      image: 'images/HorrorCat/Horror-Seven-Tanslated-By-Anish-Das-Apu.png',
      WriterName: 'Anish Das Apu',
      PdfName: 'images/HorrorCat/Horror Seven Tanslated By Anish Das Apu   (BDeBooks.Com).pdf',
    ),

    const HorrorStory(
      title: 'Bhootnather Diary',
      image: 'images/HorrorCat/Bhootnather-Diary-By-Anish-Deb-276x430.jpg',
      WriterName: 'Anish Deb',
      PdfName: 'images/HorrorCat/Bhootnather Diary By Anish Deb(BDeBooks.Com).pdf',
    ),

  ];
/// End_____________________________________________________________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Horror Stories',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: stories.map((story) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: ContentShow(horrorStory: story),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        story.image,
                        width: 170,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              story.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(story.WriterName),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              child: const RequestPage(),
            ),
          );
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}

class HorrorStory {
  final String title;
  final String image;
  final String WriterName;
  final String PdfName;

  const HorrorStory({
    required this.title,
    required this.image,
    required this.WriterName,
    required this.PdfName,
  });
}
