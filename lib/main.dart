import 'package:flutter/material.dart';

void main() {
  runApp(Appwidget());
}

class Appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUSIC",
            style: TextStyle(
              fontFamily: "BOLD",
              fontSize: 30,
            )),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Title(color: Colors.white, child: Text("Artistas"))],
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Mudou padra a Página do artista");
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/Eminem.jpg"),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
