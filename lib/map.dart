import 'package:flutter/material.dart';
import 'map.dart';
import 'bizKimiz.dart';
import 'gorseller.dart';
import 'calisanlar.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  int page = 2;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
    );
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Harita Ekranı"),
      ),
    );
  }
}
