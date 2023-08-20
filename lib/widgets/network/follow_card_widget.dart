import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:mouridepro/widgets/button/rounded_button.dart';
import 'package:provider/provider.dart';

class Follow extends StatelessWidget {
  final String url;
  final String name;
  final String profile;
  final String content;
  final String like;
  final String comment;
  final String image;
  final String video;
  const Follow(
      {super.key,
      required this.url,
      required this.name,
      required this.profile,
      required this.content,
      required this.like,
      required this.comment,
      required this.image,
      required this.video});

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
        builder: (context, model, _) => Card(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /*Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      url.isNotEmpty
                          ? CircleAvatar(
                              radius: 24, backgroundImage: NetworkImage(url))
                          : const CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage("assets/images/avatar.jpeg")),
                      const SizedBox(width: 12),
                      Column(
                        children: [
                          Text(name,
                              style: TextStyle(
                                  color: inputColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          Text(profile, style: TextStyle(color: inputColor)),
                        ],
                      ),
                    ],
                  )),*/
              // const SizedBox(height: 10),
              /* content.length > 100
                  ? !model.showText
                      ? Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(content.substring(0, 50),
                                  style: TextStyle(
                                      color: inputColor, fontSize: 13)),
                              Text(content.substring(50, 97),
                                  style: TextStyle(
                                      color: inputColor, fontSize: 13)),
                              Row(
                                children: [
                                  Text("${content.substring(97, 100)} ...",
                                      style: TextStyle(
                                          color: inputColor, fontSize: 13)),
                                  InkWell(
                                    onTap: () {
                                      model.showAllContent();
                                    },
                                    child: Text("voir plus",
                                        style: TextStyle(
                                            color: inputColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ))
                      : Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(content,
                              style:
                                  TextStyle(color: inputColor, fontSize: 13)))
                  : Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(content,
                          style: TextStyle(color: inputColor, fontSize: 13))),
              const SizedBox(height: 4),*/
              Stack(children: [
                Container(
                    // margin: EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 9,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            )))),
                url.isNotEmpty
                    ? Container(
                        margin: EdgeInsets.only(top: 50, left: 30),
                        child: CircleAvatar(
                            radius: 45, backgroundImage: NetworkImage(url)))
                    : const CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage("assets/images/avatar.jpeg")),
                Positioned(
                    top: 10,
                    right: 15,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Container(
                  alignment: FractionalOffset.bottomRight,
                  margin: EdgeInsets.only(top: 120, left: 250, right: 10),
                  child: RoundedButtonOutline(
                    heigth: 30,
                    sizeText: 15,
                    textColor: inputColor,
                    text: "Suivre",
                    bgColor: inputColor,
                  ),
                )
              ]),
              const SizedBox(height: 15),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(name,
                          style: TextStyle(
                              color: inputColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      Text(profile, style: TextStyle(color: inputColor)),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text("Suivi par Mactar, Serge et 3 autres personnnes",
                      style: TextStyle(color: inputColor))),
              const SizedBox(height: 10),
            ])));
  }
}
