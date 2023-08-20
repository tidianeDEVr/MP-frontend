import 'package:flutter/material.dart';

import '../../widgets/notification/Notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List posts = [
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "isSeen": false,
        "date": "12 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "isSeen": false,
        "date": "32 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "isSeen": false,
        "date": "34 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "isSeen": false,
        "date": "44 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "isSeen": false,
        "date": "54 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "isSeen": true,
        "date": "58 min"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "isSeen": true,
        "date": "1 h"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "isSeen": true,
        "date": "2 h"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "isSeen": true,
        "date": "4 h"
      },
      {
        "profile":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "isSeen": true,
        "date": "1 j"
      },
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width -
                          MediaQuery.of(context).size.width / 3,
                      color: Colors.grey[300],
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Icon(
                            Icons.edit_square,
                            color: inputColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Rédiger une publication",
                            style: TextStyle(color: inputColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    Container(
                        height: 40,
                        width: 50,
                        color: Colors.grey[300],
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Icon(
                          Icons.videocam,
                          size: 28,
                          color: inputColor,
                        )),
                    const SizedBox(width: 1),
                    Container(
                        height: 40,
                        width: 50,
                        color: Colors.grey[300],
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Icon(
                          Icons.camera_alt,
                          size: 28,
                          color: inputColor,
                        ))
                  ],
                ),*/
              const SizedBox(height: 10),
              Container(
                // padding: const EdgeInsets.only(left: 0, right: 0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: ((context, index) {
                    return Notification_widget(
                      profile: posts.elementAt(index)['profile'],
                      url: posts.elementAt(index)['url'],
                      isSeen: posts.elementAt(index)['isSeen'],
                      date: posts.elementAt(index)['date'],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
