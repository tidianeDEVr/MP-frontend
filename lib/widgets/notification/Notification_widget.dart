import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:provider/provider.dart';

class Notification_widget extends StatelessWidget {
  final String url;
  final String profile;
  final bool isSeen;
  final String date;
  const Notification_widget(
      {super.key,
      required this.url,
      required this.profile,
      required this.isSeen,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
        builder: (context, model, _) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 80,
                  color: !isSeen ? inputColor.withOpacity(0.1) : Colors.white,
                  // margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      isSeen
                          ? Container(
                              margin: EdgeInsets.only(left: 15),
                            )
                          : Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: inputColor,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                  child: Text(
                                '',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )),
                            ),
                      url.isNotEmpty
                          ? CircleAvatar(
                              radius: 24, backgroundImage: NetworkImage(url))
                          : const CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage("assets/images/avatar.jpeg")),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.6,
                            child: Text(profile,
                                style: TextStyle(color: inputColor))),
                        flex: 10,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: 5, right: 5),
                            child: Align(
                                alignment: Alignment.topRight,
                                // width: MediaQuery.of(context).size.width / 1.3,
                                child: Text(date,
                                    style: TextStyle(color: inputColor)))),
                        flex: 2,
                      ),
                    ],
                  )),
              // const SizedBox(height: 15),
              Container(
                height: 2,
                color: Colors.grey[300],
              ),
            ]));
  }
}
