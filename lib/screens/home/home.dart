import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:mouridepro/screens/expert/don/donation.dart';
import 'package:mouridepro/screens/jobs/jobs.dart';
import 'package:mouridepro/screens/network/network.dart';
import 'package:mouridepro/screens/notification/notification.dart';
import 'package:mouridepro/screens/post/posts.dart';
import 'package:mouridepro/screens/post/add_post.dart';
import 'package:provider/provider.dart';

import '../../route/route_generator.dart';
import '../../utils/screen.dart';
import '../../widgets/appBar/appbar_widget.dart';
import '../../widgets/button/rounded_button.dart';
import '../../widgets/post/add_post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      const PostScreen(),
      const NetworkScreen(),
      const PublishScreen(),
      const NotificationScreen(),
      JobsScreen()
    ];

    return Consumer<PostProvider>(
      builder: (context, model, _) => Scaffold(
        appBar: const CustomAppBar(),
        drawer: Drawer(
          backgroundColor: Color(0XFFE5E6E8),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: screenHeight(context) * 0.1,
                      left: screenWidth(context) * 0.05,
                    ),
                    width: screenWidth(context) * 0.1,
                    height: screenHeight(context) * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/pp.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Thierno Soumaré",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 4, left: 20, bottom: 20),
                    child: Text(
                      "Lead dev mobile ios",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 4, left: 20),
                        child: Text(
                          "Voir profil",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 300, left: 10, right: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.black,
                      ),
                      title: const Text(
                        'Faire une donation',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Donation()),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                      title: const Text(
                        'Groupes',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.event,
                        color: Colors.black,
                      ),
                      title: const Text(
                        'Événements',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                      ),
                      title: const Text(
                        'Paramètres',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteGenerator.login, (Route<dynamic> route) => false);
                },
                child: Container(
                  alignment: FractionalOffset.bottomCenter,
                  margin:
                      EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 40),
                  child: RoundedButtonWitheIcon(
                    sizeText: 15,
                    text: "Déconnexion",
                    bgColor: inputColor,
                    heigth: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: widgets.elementAt(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                (model.currentIndex == 0)
                    ? Icons.home_rounded
                    : Icons.home_outlined,
                size: 28,
                color: inputColor,
              ),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  (model.currentIndex == 1)
                      ? Icons.group
                      : Icons.group_outlined,
                  size: 28,
                  color: inputColor),
              label: "Mon réseau",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  (model.currentIndex == 2)
                      ? Icons.add_box
                      : Icons.add_box_outlined,
                  size: 28,
                  color: inputColor),
              label: "Publier",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(
                      (model.currentIndex == 3)
                          ? Icons.notifications
                          : Icons.notifications_outlined,
                      size: 28,
                      color: inputColor),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: BorderRadius.circular(100)),
                        child: const Center(
                            child: Text(
                          '20',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )),
                      ))
                ],
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  (model.currentIndex == 4) ? Icons.work : Icons.work_outline,
                  size: 28,
                  color: inputColor),
              label: "Emplois",
            )
          ],
          unselectedLabelStyle: TextStyle(color: inputColor, fontSize: 8),
          selectedLabelStyle: TextStyle(color: inputColor, fontSize: 8),
          selectedItemColor: inputColor,
          unselectedItemColor: inputColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: model.currentIndex,
          onTap: (int index) {
            if (index == 2) {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return AddPostPage();
                },
              );
              return;
            }
            model.changeIndex(index);
          },
        ),
      ),
    );
  }
}
