import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:convert';
import 'package:skin_checker/pages/take_picture_screen.dart';
import 'package:skin_checker/pages/pick_image.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PickImage(),
                      )
                    );
                  },
                  child: Text("Browse From Device"),
                ),
                RaisedButton(
                  onPressed: () async {
                    final cameras = await availableCameras();
                    final firstCamera = cameras.first;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TakePictureScreen(
                        camera: firstCamera,
                      )),
                    );
                  },
                  child: Text("Open Camera"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
