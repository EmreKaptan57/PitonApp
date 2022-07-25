import 'package:untitled6/map.dart';
import 'package:untitled6/piton_home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'bizKimiz.dart';
import 'calisanlar.dart';
import 'gorseller.dart';

void main() {
  runApp(
    const BenimUyg(),
  );
}

class BenimUyg extends StatefulWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  State<BenimUyg> createState() => BenimUygState();
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Emre Kaptan",
                style: TextStyle(
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1.0,
                        color: Colors.black),
                  ],
                ),
              ),
              accountEmail: const Text(
                "emrekaptan@piton.com.tr",
                style: TextStyle(
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1.0,
                        color: Colors.black),
                  ],
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://yt3.ggpht.com/9y_H2GuDbYFxNUXkkPrBB0V7OH40Sz7kyV_oT9la9idIJbi_Mz9XCWk90-Gphj5zdFAU15h5qw=s176-c-k-c0x00ffffff-no-rj-mo",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/03/32/86/80/360_F_332868002_EwKc4mpYytHNxavGdJUdE7UzuZ8wnXns.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            ListTile(
                leading: const Icon(Icons.question_mark_outlined),
                title: const Text("Biz Kimiz ?"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BizKimizPage(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Görseller"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GorsellerPage(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Çalışanlar"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CalisanlarPage(),
                  ));
                }),
            ListTile(
              leading: const Icon(Icons.power_settings_new),
              title: const Text("Çıkış Yap"),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class BenimUygState extends State<BenimUyg> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PitonHomePage());
  }
}
