import 'package:Supkothar_Somoy/HomeFont/src/pages/read/widget/bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../models/books.dart';


class ReadPage extends StatefulWidget {
  const ReadPage(
      {Key? key, required this.books})
      : super(key: key);

  final Books books;

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  bool show = false;
  TextStyle font = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'Roboto');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert)),
                const SizedBox(
                  width: 12,
                ),
              ],
              floating: true,
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.primary,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.books.name.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(widget.books.auther.toString(),
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto')),
                ],
              ),
            ),
            _buildContent(context),
          ],
        ),
      ),
      bottomSheet: show == true
          ? BottomSheet(
              enableDrag: false,
              builder: (context) => BottomSheetWidget(

                settings: {
                  'size': font.fontSize,
                  'font_name': font.fontFamily,
                },
                onClickedClose: () => setState(() {
                  show = false;
                }),
                onClickedConfirm: (value) => setState(() {
                  font = value;
                  show = false;
                }),
              ),
              onClosing: () {},
            )
          : null,
    );
  }

  Widget _buildContent(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
            child: Text(
              widget.books.content.toString(),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,
              style: font,
            ),
          )
        ],
      ),
    );
  }
}
