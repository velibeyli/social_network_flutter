import 'package:flutter/material.dart';
import 'package:socia_world/sent_post.dart';

class ProfilePage extends StatelessWidget {
  final String profilPhoto;
  final String nameSurname;
  final String coverPhoto;
  final String username;

  const ProfilePage(
      {super.key,
      required this.profilPhoto,
      required this.nameSurname,
      required this.coverPhoto,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 230.0,
                  //color: Colors.yellow,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(coverPhoto),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: nameSurname,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(width: 2.0, color: Colors.white),
                        image: DecorationImage(
                          image: NetworkImage(profilPhoto),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        nameSurname,
                        style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        username,
                        style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 15.0,
                  top: 130.0,
                  child: Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Takip et",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context, true))
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  saygac("Takipci", "20K"),
                  saygac("Takip", "500"),
                  saygac("Paylasim", "75"),
                ],
              ),
            ),
            const SentPost(
              description: "2ci shekil",
              activeTime: "2 saat once",
              nameSurname: "meli meliyev",
              postPhoto:
                  "https://cdn.pixabay.com/photo/2017/08/23/00/37/cat-baby-2671159_1280.jpg",
              profilPhotoLink:
                  "https://cdn.pixabay.com/photo/2019/09/26/04/45/portrait-4505074_1280.jpg",
            )
          ],
        ));
  }

  Column saygac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sayi,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
