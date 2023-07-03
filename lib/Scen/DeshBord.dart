import 'package:Supkothar_Somoy/Scen/CatagoryPage/Horror/CHorror.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'CatagoryPage/Detective/CDetective.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_open_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.report_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Select Category's",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search your category",
                    fillColor: Colors.grey[200],
                    filled: true,
                    label: Text("Search"),
                    prefixIcon: Icon(Icons.search_off),
                    helperText: "Search feature is currently unavailable.",
                    helperStyle: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final maxWidth = constraints.maxWidth;
                    final cardWidth = (maxWidth - 48) / 2;
                    final cardHeight = cardWidth * 1.2;
                    return Wrap(
                      spacing: 16,
                      runSpacing: 10,
                      children: [
                        categoryCard(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: const CHorror(),
                                type: PageTransitionType.bottomToTop,
                              ),
                            );
                          },
                          color: Colors.blue,
                          assetPath: "images/121370-horror-halloween-house-animation.json",
                          categoryName: "Horror Story",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        categoryCard(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: const CDetective(),
                                type: PageTransitionType.bottomToTop,
                              ),
                            );
                          },
                          color: Colors.amber,
                          assetPath: "images/96262-detective-search.json",
                          categoryName: "Detective",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        categoryCard(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.cyan,));
                          },
                          color: Colors.cyan,
                          assetPath: "images/111717-animacao-kids-patria-escola.json",
                          categoryName: "Kids Story",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        categoryCard(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.deepPurpleAccent,));
                          },
                          color: Colors.deepPurpleAccent,
                          assetPath: "images/94879-lover-people-sitting-on-garden-banch.json",
                          categoryName: "Love Story",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        categoryCard(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.indigoAccent,));
                          },
                          color: Colors.indigoAccent,
                          assetPath: "images/39962-funny-brain.json",
                          categoryName: "Brain game",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        categoryCard(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.pinkAccent,));
                          },
                          color: Colors.pinkAccent,
                          assetPath: "images/39962-funny-brain.json",
                          categoryName: "Quiz Game",
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                        ),
                        // Add more category cards here
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryCard({
    required VoidCallback onTap,
    required Color color,
    required String assetPath,
    required String categoryName,
    required double cardWidth,
    required double cardHeight,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Lottie.asset(assetPath, height: cardHeight * 0.66),
                  const SizedBox(height: 1),
                  Text(
                    categoryName,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
