import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bizKimiz.dart';
import 'map.dart';
import 'gorseller.dart';
import 'calisanlar.dart';

class CustomListTile extends StatelessWidget {
  String? title;
  String? substitle;
  String? image;

  CustomListTile({this.title, this.substitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(title!),
        subtitle: Text(substitle!),
        trailing: Image.network(image!),
      ),
    );
  }
}

class CalisanlarPage extends StatefulWidget {
  const CalisanlarPage({Key? key}) : super(key: key);

  @override
  State<CalisanlarPage> createState() => _CalisanlarState();
}

class _CalisanlarState extends State<CalisanlarPage> {
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
              Text("Çalısanlar",
                  style: GoogleFonts.fredokaOne(
                    fontSize: 40,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              CustomListTile(
                  title: "Emre",
                  substitle: "Stajyer",
                  image:
                      "https://media-exp1.licdn.com/dms/image/C4D0BAQHVYqe-1qzwzg/company-logo_200_200/0/1652776344847?e=2147483647&v=beta&t=5EkZU1DZlZ8pFN3DJXutGgKFTjC5zdxrEVo6QWhnRAY"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
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
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   children: [
      //     Image.network(
      //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzpv9AJKSnacZkSkWvMXr_i8DSJK0yEJBgg&usqp=CAU'),
      //     Image.network('https://picsum.photos/250?image=2'),
      //     Image.network('https://picsum.photos/250?image=3'),
      //     Image.network('https://picsum.photos/250?image=4'),
      //   ],
      // ),
    );
  }
}
