import 'package:flutter/material.dart';

class Dnum1 extends StatelessWidget {
  const Dnum1({Key? key}) : super(key: key);

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
            ' এক শিকারি ও ইঁদুরের শিক্ষামূলক গল্প',
            style: TextStyle(fontFamily: "NotoSansBengali"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/story-of-a-hunter-and-rat.jpg',
                fit: BoxFit.fill,
              ),
              Container(
                  height: 800,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  color: Colors.transparent,
                  child: Text(
                    "একবার একটা ইঁদুর ভুল করে হীরের টুকরো গিলে ফেলে। হীরের যে মালিক তার রাতের ঘুম উড়ে যায়। ইঁদুর বধের জন্যে সে এক ইঁদুর শিকারীর খোঁজ করে তাকে সেই ইঁদুর মেরে হীরে উদ্ধার করার ঠিকে দেয়। শিকারি যখন ইঁদুর মারতে ইঁদুরদের বাসস্থানে পৌঁছোয় সে দেখে হাজারের ওপর ইঁদুর একে অন্যের সংগে গুঁতোগুঁতি করে বসে শুয়ে আছে আর একটা ইঁদুর সবার থেকে আলাদা এক জায়গায় চিৎপটাং হয়ে শুয়ে। শিকারি তাক করে ওই ইঁদুরটাকেই ধরে আর তার পেট চিরে হীরে বার করে মালিকের হাতে সেটা তুলে, নিজের হিসেব বুঝে যখন সেখান থেকে যেতে উদ্ধত হয়, মালিক যিনি যারপরনাই আশ্চর্য হয়েছিলেন শিকারির কেরামতি দেখে, তাকে জিজ্ঞেস করেন, -হাজারো ইঁদুরের মধ্যে কি ভাবে তুমি বুঝলে ভাই যে ওই ইঁদুরটাই হীরে গিলেছে..? শিকারি জবাবে বলে, -খুব সহজ স্যার। মূর্খ যখন হঠাৎ বিত্তবান হয়ে যায়, সে নিজের লোকেদের সংসর্গ ও তাদের সংগে মেলামেশা বন্ধ করে দেয়।"
                  )
              )
            ],
          ),
        ));
  }
}
