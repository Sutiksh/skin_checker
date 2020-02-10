import 'package:flutter/material.dart';
import 'package:skin_checker/pages/home_screen.dart';
import 'package:camera/camera.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();


  runApp(MaterialApp(
    title: 'SKin Checker',
    theme: ThemeData.dark(),
    home: HomeScreen(),
  ));
}