import 'package:flutter/material.dart';

import '../../widgets/post/post_widget.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List posts = [
      {
        "content":
            "Magal Touba 2023 nio gui kay wajal bou bax and ci ak wa commité d'organisation du grand magal de Touba",
        "name": 'Mbacke Diakhate',
        "profile": 'Developer full stack',
        "url":
            'https://media.licdn.com/dms/image/C4D03AQF_ldwKgdIlkw/profile-displayphoto-shrink_400_400/0/1629308842019?e=1691020800&v=beta&t=o2xQV49v0dUn_-nZ9x6z75WfdDc0x6XHl_DJghZ7X54',
        "image":
            'https://www.exclusif.net/photo/art/grande/56864929-42240768.jpg?v=1622812096',
        "like": '313',
        "comment": "28",
        "video": '',
      },
      {
        "content": "Bootcamp Touba 2023 nio wajal ko",
        "name": 'Moctar Sarr',
        "profile": 'Entrepreneur',
        "url":
            'https://www.socialnetlink.org/wp-content/uploads/2021/09/Moctar-Sarr.jpg',
        "image":
            'https://images.seneweb.com/dynamic/modules/news/images/gen/Ely/mourid-professionals.jpeg',
        "like": '513',
        "comment": "128",
        "video": '',
      }
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
                    return Post(
                      content: posts.elementAt(index)['content'],
                      name: posts.elementAt(index)['name'],
                      profile: posts.elementAt(index)['profile'],
                      url: posts.elementAt(index)['url'],
                      image: posts.elementAt(index)['image'],
                      like: posts.elementAt(index)['like'],
                      comment: posts.elementAt(index)['comment'],
                      video: '',
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
