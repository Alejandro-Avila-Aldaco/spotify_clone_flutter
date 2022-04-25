import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.yellow.withOpacity(0.3),
                  Colors.yellow.withOpacity(0.2),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Escuchado recientemente",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Row(
                          children: [
                            Icon(Icons.notifications),
                            SizedBox(width: 16),
                            Icon(Icons.access_time_outlined),
                            SizedBox(width: 16),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/Bad bunny y.png"),
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/Oasis.png"),
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/rihanna.jpg"),
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/x100pre.jpg"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
