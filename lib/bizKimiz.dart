// ignore_for_file: unnecessary_const

import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map.dart';
import 'gorseller.dart';
import 'calisanlar.dart';

class BizKimizPage extends StatefulWidget {
  const BizKimizPage({Key? key}) : super(key: key);

  @override
  State<BizKimizPage> createState() => _BizKimizState();
}

class _BizKimizState extends State<BizKimizPage> {
  int page = 3;
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
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text("Biz Kimiz ?",
                  style: GoogleFonts.fredokaOne(
                    fontSize: 40,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU",
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'PİTON Teknoloji olarak 2006 yılından bu yana “Akıllı Şehirler, Akıllı Ulaşım ve Coğrafi Bilgi Sistemleri” alanlarında yenilikçi yazılım çözümleri sunmaktayız. Geliştirdiğimiz yazılım çözümleri ve sunduğumuz danışmanlık hizmeti ile müşterilerimizin "Bilgi Teknolojileri" alanında sektörel rekabet güçlerini arttırarak, kurumsal kullanım kapasitelerini ve iş verimliliklerini daha etkin hale getirmekteyiz. ',
                  style: TextStyle(
                    overflow: TextOverflow.visible,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
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
