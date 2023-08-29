import 'package:flutter/material.dart';
import 'package:socia_world/sent_post.dart';
import 'package:socia_world/profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyProje",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const AnaSehife(),
    );
  }
}

class AnaSehife extends StatefulWidget {
  const AnaSehife({super.key});

  @override
  State<AnaSehife> createState() => _AnaSehifeState();
}

class _AnaSehifeState extends State<AnaSehife> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: const Text(
          "Sociaworld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.purple,
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          notification("Kamil seni takip etdi", "3 deq once"),
                          notification("Seda sekline rey yazdi", "1 gun once"),
                          notification("Cuneyt mesaj gonderdi", "2 hafta once"),
                        ],
                      );
                    });
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(5.0, 3.0),
                      blurRadius: 5.0)
                ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilStatus(
                  "Selcuk",
                  "https://cdn.pixabay.com/photo/2013/07/12/14/36/man-148582_1280.png",
                  "firtis mirtisov",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Tom",
                  "https://cdn.pixabay.com/photo/2021/07/25/02/12/goddess-6490708_1280.jpg",
                  "meli meliyev",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Jessica",
                  "https://cdn.pixabay.com/photo/2021/07/19/04/36/woman-6477171_1280.jpg",
                  "guli guliyev",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Belma",
                  "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_1280.png",
                  "Belma Yildiz",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Yildiz",
                  "https://cdn.pixabay.com/photo/2014/04/02/17/07/user-307993_1280.png",
                  "Yildiz Batuhan",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Nadir",
                  "https://cdn.pixabay.com/photo/2020/06/03/14/45/portrait-5255170_1280.jpg",
                  "Nadir babcan",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
                profilStatus(
                  "Kadir",
                  "https://cdn.pixabay.com/photo/2021/07/19/03/56/man-6477129_1280.jpg",
                  "Zapi zapiyev",
                  "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_1280.jpg",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const SentPost(
            description: "1ci shekil",
            activeTime: "1 saat once",
            nameSurname: "firtis mirtisov",
            postPhoto:
                "https://cdn.pixabay.com/photo/2022/12/05/04/18/ai-generated-7635902_1280.jpg",
            profilPhotoLink:
                "https://cdn.pixabay.com/photo/2022/12/07/03/09/ai-generated-7640161_1280.jpg",
          ),
          const SentPost(
            description: "2ci shekil",
            activeTime: "2 saat once",
            nameSurname: "meli meliyev",
            postPhoto:
                "https://cdn.pixabay.com/photo/2017/08/23/00/37/cat-baby-2671159_1280.jpg",
            profilPhotoLink:
                "https://cdn.pixabay.com/photo/2019/09/26/04/45/portrait-4505074_1280.jpg",
          ),
          const SentPost(
            description: "3cu shekil",
            activeTime: "3 saat once",
            nameSurname: "guli guliyev",
            postPhoto:
                "https://cdn.pixabay.com/photo/2021/02/22/05/43/face-6038916_1280.jpg",
            profilPhotoLink:
                "https://cdn.pixabay.com/photo/2019/08/08/20/04/bird-4393745_1280.jpg",
          ),
          const SentPost(
            description: "4cu shekil",
            activeTime: "9 saat once",
            nameSurname: "Zapi zapiyev",
            postPhoto:
                "https://cdn.pixabay.com/photo/2022/11/29/03/46/witch-7623565_1280.jpg",
            profilPhotoLink:
                "https://cdn.pixabay.com/photo/2019/08/10/16/09/dog-eurasier-4397240_1280.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding notification(String message, String time) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            message,
            style: TextStyle(fontSize: 15.0),
          ),
          Text(time),
        ],
      ),
    );
  }

  Widget profilStatus(String istifadeciAdi, String profileImage,
      String userName, String coverPhoto) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool returnData = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilePage(
                    profilPhoto: profileImage,
                    nameSurname: istifadeciAdi,
                    coverPhoto: coverPhoto,
                    username: userName,
                  )));
          if (returnData) {
            print("profil sayfasindan dondu");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: istifadeciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                            image: NetworkImage(profileImage),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                istifadeciAdi,
                style: const TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
