import 'package:flutter/material.dart';
import 'package:music_player_ui/MusicPlayerUI/nueBox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /// back button and menu button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: NueBox(child: Icon(Icons.arrow_back_ios)),
                        ),
                        Text('P L A Y  L I S T'),
                        SizedBox(
                            width: 60, height: 60,
                          child: NueBox(child: Icon(Icons.menu)),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              /// cover art, artist name, song name

              const SizedBox(height: 15,),
              NueBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('asset/cover.jpg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kota the Friend', style: TextStyle(
                                fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade700
                              ),),
                              const SizedBox(height: 5,),
                              const Text('Birde', style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                        const Icon(Icons.favorite, color: Colors.red, size: 35,)
                      ],
                    )
                  ],
                ),
              ),

              /// start time, shuffle button, repeat button, end time
              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22')
                ],
              ),

              /// linear bar
              const SizedBox(height: 15,),

              NueBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: .5,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),

              /// previous song, pause play, skip next song
              const SizedBox(height: 15,),
              
              SizedBox(
                height: 60,
                child: Row(
                  children: const [
                    Expanded(
                        child: NueBox(child: Icon(Icons.skip_previous, size: 31,)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: NueBox(child: Icon(Icons.play_arrow, size: 31,)),
                      ),
                    ),
                    Expanded(
                      child: NueBox(child: Icon(Icons.skip_next, size: 31,)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

