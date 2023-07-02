import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../RequestSTf.dart';
import 'DContenShow.dart';

class CDetective extends StatefulWidget {
  const CDetective({Key? key}) : super(key: key);

  @override
  State<CDetective> createState() => _CDetectiveState();
}
/// Add Strory Here ____________________________________________________________

class _CDetectiveState extends State<CDetective> {
  static final List<DetectiveStory> stories = [
    const DetectiveStory(
      title: 'Jamaj Bhoot',
      image: 'https://www.amarbooks.org/thumbs/1465092365.jpg',
      WriterName: 'Rokib Hasan',
      PdfName: 'https://www.amarbooks.org/pdfurl/Tin%20Goyenda/Jamaj%20Bhoot.pdf',
    ),
    const DetectiveStory(
      title: 'Mojar Bhoot',
      image: 'https://www.amarbooks.org/thumbs/1482510611.jpg',
      WriterName: 'Humayun Ahmed',
      PdfName: 'https://www.amarbooks.org/pdfurl/Humayun%20Ahmed/Mojar%20Bhoot.pdf',
    ),
    const DetectiveStory(
      title: 'Goyenda Tom Sawyer',
      image: 'https://www.amarbooks.org/thumbs/1573747232.jpg',
      WriterName: ' Anubad',
      PdfName: 'https://www.amarbooks.org/pdfurl/Anubad%20eBooks/Goyenda%20Tom%20Sawyer%20(004).pdf',
    ),
    const DetectiveStory(
      title: 'Ratri Voyonkor',
      image: 'https://www.amarbooks.org/thumbs/1492824776.jpg',
      WriterName: ' Rokib hasan',
      PdfName: 'https://www.amarbooks.org/pdfurl/Tin%20Goyenda/Ratri%20Voyonkor.pdf',
    ),
    const DetectiveStory(
      title: 'Arek Frankenstein',
      image: 'https://www.amarbooks.org/thumbs/1465097925.jpg',
      WriterName: ' Rokib hasan',
      PdfName: 'https://www.amarbooks.org/pdfurl/Tin%20Goyenda/Vol-029__Arek%20Frankenstein,%20Maya%20Jal,%20Saikate%20Sabdhan.pdf',
    ),



  ];
  /// End_____________________________________________________________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detective Stories',
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
                      child: DContentShow(detectiveStory: story),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        story.image,
                        width: 175,
                        height: 150,
                        fit: BoxFit.cover,
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

class DetectiveStory {
  final String title;
  final String image;
  final String WriterName;
  final String PdfName;

  const DetectiveStory({
    required this.title,
    required this.image,
    required this.WriterName,
    required this.PdfName,
  });
}
