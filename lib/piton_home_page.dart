import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bizKimiz.dart';
import 'main.dart';
import 'map.dart';
import 'gorseller.dart';
import 'calisanlar.dart';

class PitonHomePage extends StatelessWidget {
  const PitonHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationKey = GlobalKey<CurvedNavigationBarState>();
    PageController firstPage = PageController();
    PageController secondPage = PageController();
    PageController thirdPage = PageController();

    final String instagramPhoto = "assets/images/instagram.png";

    final String twitterPhoto = "assets/images/twitter-brands.png";

    final String youtubePhoto = "assets/images/youtubeLogo.png";

    final Uri url = Uri.parse('https://www.piton.com.tr/tr');

    Future<void> launchUrlWeb() async {
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
    }

    final Uri mail = Uri.parse('mailto:emrekaptan.iletisim@gmail.com');

    Future<void> launchUrlMail() async {
      if (!await launchUrl(mail)) {
        throw 'Could not launch $mail';
      }
    }

    final Uri face = Uri.parse('https://www.facebook.com/PitonYazilim/');

    Future<void> facebook() async {
      if (!await launchUrl(face)) {
        throw 'Could not launch $face';
      }
    }

    final Uri insta = Uri.parse('https://www.instagram.com/pitontechnology/');

    Future<void> instagram() async {
      if (!await launchUrl(insta)) {
        throw 'Could not launch $insta';
      }
    }

    final Uri twitterr = Uri.parse('https://twitter.com/pitonyazilim');

    Future<void> twitter() async {
      if (!await launchUrl(twitterr)) {
        throw 'Could not launch $twitterr';
      }
    }

    final Uri youtubee =
        Uri.parse('https://www.youtube.com/channel/UCanr6pm7fLd17pbkKFK-F6w');

    Future<void> youtube() async {
      if (!await launchUrl(youtubee)) {
        throw 'Could not launch $youtubee';
      }
    }

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      /*bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        /*key: _bottomNavigationKey,*/
        backgroundColor: Colors.blue,
        height: 55,
        index: 1,
        items: const [
          Icon(Icons.dark_mode, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.map_sharp, size: 30),
        ],

        // onTap: (index) {
        //   page=index;
        //   CurvedNavigationBarState? navBarState =
        //       _bottomNavigationKey.currentState;
        //   navBarState?.setPage(2);
        //   //Handle button tap
        //   // if (index == 2) {
        //   //
        //   //   Navigator.of(context).push(
        //   //     MaterialPageRoute(
        //   //       builder: (context) => MapPage(),
        //   //     ),
        //   //   );
        //   // }
        // },
      ),*/
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: NetworkImage(
                            "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
                      ),
                    ),
                    Text("PITON AR-GE",
                        style: GoogleFonts.fredokaOne(
                          fontSize: 45,
                        )),
                    Text("Yazılım Evi",
                        style: GoogleFonts.acme(
                          fontSize: 30,
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 250,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))),
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
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 50,
                              width: 250,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))),
                                    primary: Colors.red),
                                onPressed: launchUrlMail,
                                icon: const Icon(Icons.mail, size: 40
                                    //color: Colors.blue,
                                    ),
                                label: Text(
                                  'piton.iletisim',
                                  style: GoogleFonts.acme(fontSize: 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0, shadowColor: Colors.transparent),
                          onPressed: facebook,
                          child: const CircleAvatar(
                            radius: 30,
                            child: Icon(
                              Icons.facebook,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0, shadowColor: Colors.transparent),
                          onPressed: instagram,
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset(instagramPhoto),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0, shadowColor: Colors.transparent),
                          onPressed: twitter,
                          child: CircleAvatar(
                            radius: 32,
                            child: Image.asset(twitterPhoto),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0, shadowColor: Colors.transparent),
                          onPressed: youtube,
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset(youtubePhoto),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    /*Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,

                  ),
                ),*/
                  ],
                ),
              ),
            ),
          ),
          /*MapPage() yan sayfaya geçişi sağlar*/
        ],
      ),
    );
  }
}
