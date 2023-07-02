import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:lottie/lottie.dart';

import 'CDetective.dart';

class DContentShow extends StatefulWidget {
  final DetectiveStory detectiveStory;

  const DContentShow({Key? key, required this.detectiveStory})
      : super(key: key);

  @override
  State<DContentShow> createState() => _DContentShowState();
}

class _DContentShowState extends State<DContentShow> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.detectiveStory.title),

          actions: [
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.0;
              },
              icon: const Icon(Icons.zoom_out_rounded),
            ),
            IconButton(onPressed: () {
              _pdfViewerController.zoomLevel = 1.50;
            }, icon: const Icon(Icons.zoom_in)),
            IconButton(
              onPressed: () {
                _pdfViewerKey.currentState!.openBookmarkView();
              },
              icon: const Icon(Icons.bookmark_rounded),
            ),
          ],
        ),
        body: Stack(
          children: [
            SfPdfViewer.network(
              widget.detectiveStory.PdfName,
              controller: _pdfViewerController,
              key: _pdfViewerKey,
              onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                setState(() {
                  _isLoading = false;
                });
              },
            ),
            if (_isLoading)
              Center(
                child: Lottie.asset('images/DownlodingAnimtion.json',
                    width: 200, height: 200),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Download'),
                content: Text('Do you want to download this ${widget.detectiveStory.title} story?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Sorry, download is not available'),
                        ),
                      );
                    },
                    child: const Text('Yes'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                    },
                    child: const Text('No'),
                  ),
                ],
              ),
            );
          },


          child: const Icon(Icons.download_rounded),
        ),
      ),
    );
  }
}
