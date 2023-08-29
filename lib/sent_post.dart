import 'package:flutter/material.dart';

class SentPost extends StatelessWidget {
  final String profilPhotoLink;
  final String nameSurname;
  final String activeTime;
  final String description;
  final String postPhoto;
  final int age;

  const SentPost(
      {super.key,
      required this.profilPhotoLink,
      required this.nameSurname,
      required this.activeTime,
      required this.description,
      required this.age,
      required this.postPhoto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: 380.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(
                                  profilPhotoLink,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            nameSurname,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            activeTime,
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                postPhoto,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonUnderPost(
                      myIcon: Icons.favorite,
                      iconText: "bəyən",
                      // ignore: avoid_print
                      myFunction: () => {print("beyen")}),
                  ButtonUnderPost(
                    myIcon: Icons.comment,
                    iconText: "rəy yaz",
                    // ignore: avoid_print
                    myFunction: () => {print("komment yazildi")},
                  ),
                  ButtonUnderPost(
                    myIcon: Icons.share,
                    iconText: "paylaş",
                    // ignore: avoid_print
                    myFunction: () => {print("paylasildi")},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonUnderPost extends StatelessWidget {
  final IconData myIcon;
  final String iconText;
  final dynamic myFunction;

  const ButtonUnderPost(
      {super.key,
      required this.myIcon,
      required this.iconText,
      this.myFunction});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: myFunction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                myIcon,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                iconText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
