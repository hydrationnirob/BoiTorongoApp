import 'package:flutter/material.dart';
class num1 extends StatelessWidget {
  const num1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Icon(Icons.copy),
          Icon(Icons.more_vert),

        ],
        title: Text(' যখন বিপত্তি দরজায় ধাক্কা দেয়',style: TextStyle(fontFamily: "NotoSansBengali"),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/696693703-H-768x525.jpg',fit: BoxFit.fill,),
            Container(
              height: 500,
             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              color: Colors.transparent,
              child: Text("এটি একটি গল্প যা বিভিন্ন মানুষ কিভাবে আলাদা আলাদাভাবে বিপত্তির মোকাবিলা করে তা ব্যাখ্যা করে। আশার বাবা একটি ডিম, একটি আলু, এবং কিছু চা পাতা তিনটি পৃথক পাত্রের মধ্যে ফুটন্ত জলে রেখেছিলেন। তিনি আশাকে দশ মিনিটের জন্য পাত্রগুলির উপর নজর রাখতে বললেন। এই দশ মিনিট শেষ হলে, তিনি আশাকে আলুর খোসা ছাড়াতে, ডিমের খোসা ছাড়াতে এবং চা পাতাগুলো ছেঁকে নিতে বললেন। আশা অবাক হয়ে গেল!তার বাবা ব্যাখ্যা করলেন, ‘এই জিনিসগুলির প্রত্যেকটিই উষ্ণ জলের পাত্রের মধ্যে একই অবস্থায় রাখা হয়েছিল। তারা কিভাবে ভিন্নভাবে সাড়া দিয়েছে দেখো। আলু এখন নরম, ডিম এখন কঠিন, এবং চা জলকেই পরিবর্তন করে দিয়েছে। আমরা সবাই এই জিনিসগুলির মতো। যখন বিপত্তি আসে, আমরা ঠিক তাদের মতো করেই প্রতিক্রিয়া জানাই। এখন তুমি কি আলু, ডিম, না চা চা পাতা? ‘"),



            )

          ],
        ),
      )
    );
  }
}
