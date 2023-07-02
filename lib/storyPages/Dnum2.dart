import 'package:flutter/material.dart';

class Dnum2 extends StatelessWidget {
  const Dnum2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Icon(Icons.copy),
            Icon(Icons.more_vert),

          ],
          title: Text(
            ' ভাল্লুক ও দুই বন্ধু',
            style: TextStyle(fontFamily: "NotoSansBengali"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/golpo bangla.jpg',
                fit: BoxFit.fill,
              ),
              Container(
                  height: 800,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  color: Colors.transparent,
                  child: Text(
                    " একদিন দুই বন্ধু বনের মধ্যে দিয়ে হেঁটে যাচ্ছিল। তারা জানত যে বনটি একটি বিপজ্জনক জায়গা এবং যে কোনও কিছু ঘটতে পারে। তাই যেকোনো বিপদে একে অপরের কাছাকাছি থাকার প্রতিশ্রুতি দেন তারা। হঠাৎ একটা বড় ভাল্লুক তাদের কাছে আসলো। এক বন্ধু দ্রুত পাশের গাছে উঠে গেল, অন্য বন্ধুকে পিছনে ফেলে। অন্য বন্ধুটি কীভাবে গাছে  উঠতে হয়  তা জানতোনা তাই সে বুদ্ধি করে মাটিতে শুয়ে পড়ল এবং নিঃশ্বাস নেয়া বন্ধ করে দিয়ে মৃত হওয়ার ভান করলেন। ভাল্লুকটি মাটিতে পড়ে থাকা বন্ধুর কাছে গেল।তার চার্ পাশে ঘুরে ঘুরে গন্ধ নিতে শুরু করে কারণ ভাল্লুকরা কখনই মৃতদের স্পর্শ করে না। তার পরে গাছে লুকিয়ে থাকা বন্ধুটি নেমে এল। তিনি তার বন্ধুকে জিজ্ঞাসা করল,আমার প্রিয় বন্ধু, ভাল্লুক তোমার কাছে কি গোপন কথা ফিসফিস করে বলেছিল? বন্ধুটি উত্তর দিল, ভাল্লুকটি আমাকে পরামর্শ দিয়েছিল যে কখনই মিথ্যা বন্ধুকে বিশ্বাস করবেন না।"
                  )
              )
            ],
          ),
        ));
  }
}
