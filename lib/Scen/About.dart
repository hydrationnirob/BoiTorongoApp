import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class About extends StatelessWidget {
  const About ({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: const [
            Icon(Icons.copy),
            Icon(Icons.more_vert),

          ],
          title: const Text(
            ' Aboto Us',

          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset("images/84565-about-us.json"),
              Container(
                  height: 800,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  color: Colors.transparent,
                  child: const Text(
                    " Welcome to Ropkothar Somoy, where imagination comes to life! Our app is designed especially for young readers between the ages of 10 and 15, providing a captivating world of stories at your fingertips. Whether you are seeking thrilling adventures, valuable life lessons, or simply an escape into fantastical realms, we have it all covered. Dive into a treasure trove of captivating tales that will transport you to magical lands, introduce you to extraordinary characters, and ignite your imagination like never before. Our carefully curated collection features a wide range of genres, including fantasy, morality tales, and intriguing narratives that will leave you spellbound. Experience the thrill of exploring distant realms, where brave heroes battle formidable foes, mythical creatures roam, and the impossible becomes possible. Unleash your creativity as you embark on epic quests, solve riddles, and unravel mysteries that will keep you on the edge of your seat. But it's not just about the thrill of adventure; our stories also impart important life lessons. Discover the power of kindness, courage, and perseverance through the journeys of our inspiring characters. Each story carries a moral compass, guiding readers towards understanding and empathy while encouraging personal growth. Navigating our app is a breeze, with a user-friendly interface that allows you to easily browse, search, and save your favorite stories. You can access our vast library anytime, anywhere, and embark on a reading adventure at your own pace. As you delve into the world of Ropkothar Somoy, get ready to embark on a journey that will expand your horizons, foster a love for reading, and ignite your imagination. Immerse yourself in stories that will transport you beyond the pages, capturing your heart and leaving an indelible mark on your literary journey. Join us on this exciting adventure and let your imagination run wild. Download Ropkothar Somoy today and unlock a world of stories that will captivate and inspire you. Happy reading! "
                  ,textAlign: TextAlign.center , style: TextStyle(fontSize: 18,),)
              )
            ],
          ),
        ));
  }
}
