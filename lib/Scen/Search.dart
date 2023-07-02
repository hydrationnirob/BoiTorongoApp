import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
           SizedBox(
             height: 30,
           ),
            TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Search your category",
              fillColor: Colors.white,
              filled: true,
              label: const Text("Search"),
              prefixIcon: const Icon(Icons.search_off),
              helperText: "Search feature is currently unavailable.",
              helperStyle: const TextStyle(color: Colors.red),
            )),
            const ListTile(
              title: Text("মজার মজার রূপকথার গল্প"),
              leading: const Icon(Icons.search_sharp),
              subtitle: Text(
                "currently unavailable",
                style: TextStyle(color: Colors.redAccent, fontStyle: FontStyle.italic),
              ),
            ),
            const ListTile(
              title: Text("রূপকথার গল্প"),
              leading: Icon(Icons.search_sharp),
              subtitle: Text(
                "currently unavailable",
                style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
              ),
            ),
            const ListTile(
              title: Text("ঠাকুরমার ঝুলি"),
              leading: Icon(Icons.search_sharp),
              subtitle: Text(
                "currently unavailable",
                style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
              ),
            ),
            const ListTile(
              title: Text("মিস্টার বিন"),
              leading: Icon(Icons.search_sharp),
              subtitle: Text(
                "currently unavailable",
                style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
