import 'package:flutter_apps/model/tourism_place.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class editScreen extends StatelessWidget {
  final TourismPlace place;
  editScreen({required this.place});

  @override
  Widget build(BuildContext context){
    final name = TextEditingController(text: place.name);
    final location = TextEditingController(text: place.location);
    final imageAssets = TextEditingController(text: place.imageAssets);
    final day = TextEditingController(text: place.day);
    final time = TextEditingController(text: place.time);
    final price = TextEditingController(text: place.price);
    final description = TextEditingController(text: place.description);
    final image_1 = TextEditingController(text: place.image1);
    final image_2 = TextEditingController(text: place.image2);
    final image_3 = TextEditingController(text: place.image3);
    final image_4 = TextEditingController(text: place.image4);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ' + place.name),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async{
              var url = Uri.parse('http://192.168.1.104/apiflutter/api.php');
              var response = await http.post(url, body:
              {'action': 'delete',
                'id': place.id
              });
              if (response.statusCode == 200) {
                var count = 0;
                Navigator.popUntil(context, (route) {
                  return count++ == 2;
                });
              } else {
                throw Exception('Gagal menghapus !');
              }
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [



                Container( //title
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: name,
                        )
                      ],
                    )
                ),

                Container( //location
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'location',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: location,
                        )
                      ],
                    )
                ),

                Container( //img1
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image Assets',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: imageAssets,
                        )
                      ],
                    )
                ),

                Container( //openDay
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Open Day',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: day,
                        )
                      ],
                    )
                ),

                Container( //openTime
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Open Time',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: time,
                        )
                      ],
                    )
                ),

                Container( //price
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Price',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: price,
                        )
                      ],
                    )
                ),

                Container( //Description
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Description',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: description,
                        )
                      ],
                    )
                ),

                Container( //image1
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 1',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: image_1,
                        )
                      ],
                    )
                ),

                Container( //image2
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 2',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: image_2,
                        )
                      ],
                    )
                ),

                Container( //image3
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 3',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: image_3,
                        )
                      ],
                    )
                ),
                Container( //image3
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 4',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: image_4,
                        )
                      ],
                    )
                ),

                Container( //Save Button
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 30, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () async{
                            var url = Uri.parse('http://192.168.1.104/apiflutter/api.php');
                            var response = await http.post(url, body:
                            {'action': 'update',
                              'id': place.id,
                              'name': name.text,
                              'location': location.text,
                              'day': day.text,
                              'time': time.text,
                              'price': price.text,
                              'description': description.text,
                              'imageAssets': imageAssets.text,
                              'image_1': image_1.text,
                              'image_2': image_2.text,
                              'image_3': image_3.text
                            });
                            if (response.statusCode == 200) {
                              var count = 0;
                              Navigator.popUntil(context, (route) {
                                return count++ == 2;
                              });
                            } else {
                              throw Exception('Gagal !');
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
