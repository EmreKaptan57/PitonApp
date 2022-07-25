import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map.dart';
import 'gorseller.dart';
import 'calisanlar.dart';

class GorsellerPage extends StatefulWidget {
  const GorsellerPage({Key? key}) : super(key: key);

  @override
  State<GorsellerPage> createState() => _GorsellerState();
}

class _GorsellerState extends State<GorsellerPage> {
  int page = 4;
  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('https://www.piton.com.tr/tr');

    Future<void> launchUrlWeb() async {
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
    }

    const textStyle = TextStyle(
      color: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text("Görseller",
                  style: GoogleFonts.fredokaOne(
                    fontSize: 40,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Daha fazlası için...",
                style: TextStyle(
                  overflow: TextOverflow.visible,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    primary: Colors.red),
                onPressed: launchUrlWeb,
                icon: const Icon(Icons.search, size: 40),
                label: Text(
                  'piton.com.tr',
                  style: GoogleFonts.acme(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
