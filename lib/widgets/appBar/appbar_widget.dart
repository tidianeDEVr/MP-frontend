import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData.fallback(),
      centerTitle: true,
      elevation: 0,
      leading: Builder(builder: (BuildContext context) {
        return InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.all(10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: new AssetImage('assets/images/pp.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      }),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Consumer<PostProvider>(
              builder: (context, model, _) => SizedBox(
                    height: 35,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width / 3,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextFormField(
                          controller: model.search,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                                Icon(Icons.search, size: 30, color: inputColor),
                            // fillColor: const Color.fromARGB(57, 31, 153, 214),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide:
                                  BorderSide(color: inputColor, width: 1.0),
                            ),
                            labelStyle: TextStyle(color: inputColor),
                            labelText: "Reachercher...",
                          ),
                        ),
                        // IconButton(
                        //   icon: Icon(
                        //     Icons.qr_code,
                        //   color: inputColor,
                        //),
                        // onPressed: () {},
                        //   ),
                      ],
                    ),
                  )),
          InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Icon(Icons.chat_outlined, color: inputColor, size: 30),
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
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
