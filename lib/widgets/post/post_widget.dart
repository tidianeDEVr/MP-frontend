import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:provider/provider.dart';

class Post extends StatelessWidget {
  final String url;
  final String name;
  final String profile;
  final String content;
  final String like;
  final String comment;
  final String image;
  final String video;
  const Post(
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
        builder: (context, model, _) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
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
                  )),
              const SizedBox(height: 10),
              content.length > 100
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
              const SizedBox(height: 4),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.thumb_up,
                              color: inputColor,
                              size: 15,
                            )),
                        const SizedBox(width: 2),
                        Text(like,
                            style: TextStyle(color: inputColor, fontSize: 14))
                      ],
                    ),
                    Row(
                      children: [
                        Text("$comment  republications",
                            style: TextStyle(color: inputColor, fontSize: 14))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 1,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.thumb_up_alt,
                            color: inputColor,
                            size: 20,
                          )),
                      const SizedBox(height: 4),
                      Text("j'aime",
                          style: TextStyle(
                              color: inputColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ]),
                    const SizedBox(width: 8),
                    Column(children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.comment,
                            color: inputColor,
                            size: 20,
                          )),
                      const SizedBox(height: 4),
                      Text("commenter",
                          style: TextStyle(
                              color: inputColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ]),
                    const SizedBox(width: 8),
                    Column(children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.replay_outlined,
                            color: inputColor,
                            size: 20,
                          )),
                      const SizedBox(height: 4),
                      Text("republier",
                          style: TextStyle(
                              color: inputColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ]),
                    const SizedBox(width: 8),
                    Column(children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.send,
                            color: inputColor,
                            size: 20,
                          )),
                      const SizedBox(height: 4),
                      Text("envoyer",
                          style: TextStyle(
                              color: inputColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 15,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 10),
            ]));
  }
}
