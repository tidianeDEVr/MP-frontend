import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mouridepro/constants.dart';
import '../button/button_widget.dart';

final ImagePicker _picker = ImagePicker();
File? selectedFile;

class AddPostPage extends StatefulWidget {
  final String? profileId;

  AddPostPage({Key? key, this.profileId}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddPostTop(),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: selectedFile != null ? 5 : 14,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: 'De quoi souhaitez-vous discuter ?',
              ),
            ),
          ),
          selectedFile != null
              ? Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  child: Image.file(selectedFile!),
                )
              : Container(),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => getGallery(),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.photo,
                            size: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'Galerie',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => getCamera(),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                            size: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'Appareil',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'Plus ...',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getCamera() async {
    var img = await _picker.pickImage(source: ImageSource.camera);
    setState(() => selectedFile = File(img!.path));
  }

  getGallery() async {
    var img = await _picker.pickImage(source: ImageSource.gallery);
    setState(() => selectedFile = File(img!.path));
  }
}

class AddPostTop extends StatefulWidget {
  const AddPostTop({
    super.key,
  });

  @override
  State<AddPostTop> createState() => _AddPostTopState();
}

class _AddPostTopState extends State<AddPostTop> {
  String postVisibility = 'Tout le monde';
  List<String> postVisibilities = ['Tout le monde', 'Mes relations'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 10, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.close_outlined,
                    size: 20,
                    color: inputColor,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/pp.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: DropdownButton<String>(
                    value: postVisibility,
                    padding: EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color(0xFF1E1E1E),
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        postVisibility = value!;
                      });
                    },
                    items: postVisibilities
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
              ),
            ],
          ),
          ButtonWidget(
            width: 100,
            heigth: 40,
            text: "Publier",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
