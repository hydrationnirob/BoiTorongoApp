import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:lottie/lottie.dart';

import 'CHorror.dart';

class ContentShow extends StatefulWidget {
  final HorrorStory horrorStory;

  const ContentShow({Key? key, required this.horrorStory}) : super(key: key);

  @override
  State<ContentShow> createState() => _ContentShowState();
}

class _ContentShowState extends State<ContentShow> {
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
          title: Text(widget.horrorStory.title),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.0;
              },
              icon: const Icon(Icons.zoom_out_rounded),
            ),
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
            SfPdfViewer.asset(
              widget.horrorStory.PdfName,
              controller: _pdfViewerController,
              key: _pdfViewerKey,
              onDocumentLoaded: (PdfDocumentLoadedDetails  details ) {
                setState(() {
                  _isLoading = false;
                });
              },
            ),
            if (_isLoading)
              Center(
                child: Lottie.asset('images/99274-loading.json'),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _pdfViewerController.zoomLevel = 1.50;
          },
          child: const Icon(Icons.zoom_in_rounded),
        ),
      ),
    );
  }
}
