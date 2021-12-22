import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_login/home/view/steak.dart';
import 'package:flutter_login/home/view/maschine.dart';

class HomePageNav extends StatefulWidget {
  HomePageNav({Key? key}) : super(key: key);

  @override
  _HomePageNavState createState() => _HomePageNavState();
}

class _HomePageNavState extends State<HomePageNav> {
  @override
  Widget build(BuildContext context) {

    final _imagePaths = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];

    final _steakPaths = [
    'assets/images/s1.jpeg',
    'assets/images/s2.jpeg',
    'assets/images/s3.jpeg',
  ];

    Widget carousel = Container(
      padding: const EdgeInsets.all(10),
      child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 300,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
            ),
            items: _imagePaths.map((imagePath) {
              return Builder(builder: (context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Image.asset(imagePath));
              });
            }).toList()),
    );

    Widget steak = Container(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Steak()),);
            },
            child: const Text("View All"),
          ),
        ]
      ),
    );

    Widget cardDemo = Container(
      child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              height: 250,
              viewportFraction: 0.8,
            ),
            items: _steakPaths.map((imagePath) {
              return Builder(builder: (context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(imagePath),
                  );
              });
            }).toList()),
    );

    Widget maschine = Container(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Maschine()),);
            },
            child: const Text("View All"),
          ),
        ]
      ),
    );

    Widget cardDemo1 = Container(
      padding: const EdgeInsets.all(10),
      child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              height: 250,
              viewportFraction: 0.8,
            ),
            items: _imagePaths.map((imagePath) {
              return Builder(builder: (context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(imagePath),
                  );
              });
            }).toList()),
    );

    Widget bottomContent = Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Otto Wilder Grillers',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Frohe Weihnachten',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white),
          ),
        ]
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/f7.jpeg", fit: BoxFit.cover, height: 40,),
            Text("Otto Wilder Grillers")
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          carousel,
          steak,
          cardDemo,
          maschine,
          cardDemo1,
          bottomContent,
        ],
      ),
    );
  }
}