import 'package:flutter/material.dart';
import 'package:flutter_apps/model/tourism_place.dart';

import 'edit_screen.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(place.name),
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return editScreen(
                    place: place,
                  );
                }),
              );
            }
        ),
      ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                place.imageAssets,
                height: 230,
                fit: BoxFit.fitWidth,
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child:  Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 33.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ), //Container untuk Judul
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children:  <Widget> [
                        Icon(Icons.calendar_today),
                        Text(
                          place.day,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children:  <Widget> [
                        Icon(Icons.access_time_rounded),
                        Text(
                          place.time,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children:  <Widget> [
                        Icon(Icons.attach_money_rounded),
                        Text(
                          place.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ), //Container untuk logo
              Container(
                padding: const EdgeInsets.all(16.0),
                child:  Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ), //Container untuk Deskripsi
              Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(place.image1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(place.image2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(place.image3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(place.image4),
                        ),
                      ),
                    ],
                  )
              ), //Container untuk konten carousel
            ],
          ),
        ),
      ),
    );
  }
}

