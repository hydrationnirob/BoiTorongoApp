import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'CustomListTile.dart';



class Audioplayback extends StatefulWidget {
  const Audioplayback({Key? key}) : super(key: key);

  @override
  State<Audioplayback> createState() => _AudioplaybackState();
}

class _AudioplaybackState extends State<Audioplayback> {


  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  ///Add New Audio Book Here ____________________________________________________________________________________________________________

  static final List<AudioMaker> audioMaking = [
     AudioMaker(
      Title: "Rupa",
      Author: "humayun ahmed",
      ImageUrl: "https://i.pinimg.com/originals/3e/9a/9b/3e9a9b639dc2e273df5965a8e5a549e1.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_412dcd19babd470c985193b2a8020992-128.mp3",
      Genre: "Romance",
    ),
     AudioMaker(
      Title: "Lusi",
      Author: "Debabrata Singha",
      ImageUrl: "https://i.pinimg.com/736x/1f/92/10/1f9210b0e1112e6b9595e12c4e58388b.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_a5df88cabc144806be006acfe5583d7e-128.mp3",
      Genre: "Romance",
    ),
     AudioMaker(
      Title: "Pagla Dashu",
      Author: "Sukumar Ray",
      ImageUrl: "https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/00b481412_205259.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_48c6e1ff326545d0848657684349a5de-128.mp3",
      Genre: "Funny",
    ),
    AudioMaker(
      Title: "Chine Potka",
      Author: "Sukumar Ray",
      ImageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQMYC3iaKBNoOyZ4WDu06YekhMz_Cq90ZDGA&usqp=CAU",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_a90d2f58777a401faf7be64f4884cbbd-128.mp3",
      Genre: "Funny",
    ),
    AudioMaker(
      Title: "Dashur Khyapami",
      Author: "Sukumar Ray",
      ImageUrl: "https://i.ytimg.com/vi/nBtIQpUHC9s/maxresdefault.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_f65308a4d5b84b0784993d3ff9b82eda-128.mp3",
      Genre: "Funny",
    ),
    AudioMaker(
      Title: "Iti Tomar Maa",
      Author: "Sanjib Chattopadhyay",
      ImageUrl: "https://bdebooks.com/wp-content/uploads/2023/02/Eti-Tomar-Ma-By-Sanjib-Chattopadyay.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_48d8986bbb304774a166f81d5eb5aa95-128.mp3",
      Genre: "Story",
    ),
    AudioMaker(
      Title: "Chuti",
      Author: "Rabindranath Tagore",
      ImageUrl: "https://i.ytimg.com/vi/LjN5prg3L1o/maxresdefault.jpg",
      AudioUrl: "https://music.wixstatic.com/preview/4e2c84_76cda3c6041f485d88631ca63541109b-128.mp3",
      Genre: "Story",
    ),



  ];

  /// End ________________________________________________________________________________________________________________________________________

  String currentTitle = "";
  String currentImage = "";
  String currentAuthor = "";
  String currentGenre = "";

  IconData playIcon = Icons.play_arrow;

  AudioPlayer audioplayer = AudioPlayer();
  bool isPlaying = false;
  String currentStory = "";

  Duration duration = Duration();
  Duration position = Duration();



  void playMusic(String url) async {
    if (isPlaying && currentStory == url) {
      // If the same audio is already playing, do nothing
      return;
    }

    if (isPlaying) {
      // Pause the currently playing audio
      audioplayer.pause();
    }

     await audioplayer.play(UrlSource(url));
    setState(() {
      currentStory = url;
      isPlaying = true;
      playIcon = Icons.pause;
      audioMaking.firstWhere((audio) => audio.AudioUrl == url).isLoved = true;
    });


  }

  @override
  void initState() {
    audioplayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });
    audioplayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
  }

  String formatDuration(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Audio Book"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, right: 150),
            child: Text(
              "Listen to Your Favorite Book",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: audioMaking.length,
              itemBuilder: (context, index) => CustomListTile(
                onTap: () {
                  playMusic(audioMaking[index].AudioUrl);
                  setState(() {
                    currentTitle = audioMaking[index].Title;
                    currentImage = audioMaking[index].ImageUrl;
                    currentAuthor = audioMaking[index].Author;
                    currentGenre = audioMaking[index].Genre;
                    audioMaking[index].isLoved = !audioMaking[index].isLoved;
                  });
                },

                title: audioMaking[index].Title,
                author: audioMaking[index].Author,
                imageUrl: audioMaking[index].ImageUrl,
                audioUrl: audioMaking[index].AudioUrl,
                genre: audioMaking[index].Genre,
                isLoved: audioMaking[index].isLoved,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Slider.adaptive(
                  value: position.inSeconds.toDouble(),
                  min: 0.0,
                  max: duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    audioplayer.seek(Duration(seconds: value.toInt()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, right: 12, left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(currentImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentTitle,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              currentGenre,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(currentAuthor),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (isPlaying) {
                            audioplayer.pause();
                            setState(() {
                              playIcon = Icons.play_arrow;
                              isPlaying = false;
                            });
                          } else {
                            audioplayer.resume();
                            setState(() {
                              playIcon = Icons.pause;
                              isPlaying = true;
                            });
                          }
                        },
                        iconSize: 40,
                        icon: Icon(playIcon),
                      ),
                      Text(formatDuration(position) + ' / ' + formatDuration(duration)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AudioMaker {
  final String Title;
  final String Author;
  final String ImageUrl;
  final String AudioUrl;
  final String Genre;
  late bool isLoved; // Added property

   AudioMaker({
    required this.Title,
    required this.Author,
    required this.ImageUrl,
    required this.AudioUrl,
    required this.Genre,
    this.isLoved = false, // Added default value
  });
}
