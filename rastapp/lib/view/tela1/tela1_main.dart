import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MainTela1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainTela1State();
  }
}

class MainTela1State extends State<MainTela1> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'X9Wv0-Mrwi8', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            constrainedFitted(),
            Divider(
              thickness: 3,
            ),
            containerComFirula(),
            Divider(
              thickness: 3,
            ),
            presentationScreen(),
            Divider(
              thickness: 3,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
            Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}

Widget constrainedFitted() {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 60,
      minHeight: 60,
    ),
    child: FittedBox(
      fit: BoxFit.fill,
      child: Text("RastApp"),
    ),
  );
}

Widget containerComFirula() {
  return Container(
    //width: 200,
    //height: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(40),
      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 20)],
      gradient:
          LinearGradient(colors: [Colors.red, Colors.green, Colors.yellow]),
    ),
    child: SizedBox(
      width: double.infinity,
      height: 100,
      child: Text(
        "DJ Cleiton Rasta",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    padding: EdgeInsets.all(40),
    margin: EdgeInsets.all(40),
  );
}

Widget presentationScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              border: Border.all(color: Colors.black, width: 6)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Image.asset(
                'assets/images/analise.jpg',
                width: 200,
              )),
        ),
        Text("\nJosé Aletácio da Silva",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text("📍Cajueiro - AL, Brasil",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.grey)),
        Text(
          "\nO DJ que faz a galera debochar legal",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "\nConfira o salve do DJ Cleiton Rasta para a galera da Unicamp:",
          style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
