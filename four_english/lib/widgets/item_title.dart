import 'package:flutter/material.dart';
import 'package:four_english/models/content_model.dart';
import 'package:four_english/routers/routers.dart';
import 'package:four_english/views/file_view.dart';
import 'package:get/get.dart';

class ItemTitle extends StatelessWidget {
  const ItemTitle({
    super.key,
    required this.title,
    required this.contents
  });
  final String title;
  final List<ContentModel> contents;

  @override
  Widget build(BuildContext context) {
    nextViewFile(String file, String title) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FileView(file: file, title: title,)));
      // Get.toNamed(RouteNames.FILE_VIEW);
    }
    // ignore: unnecessary_new, unused_local_variable
    List<GestureDetector> widgets = contents.map((element) => 
      // ignore: unnecessary_new
      new GestureDetector(
        onTap: () => nextViewFile("grammar.html", element.name!),
        // ignore: unnecessary_new
        child: new Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(left: 10.0, right:10.0, bottom: 8.0),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(                    
              // ignore: prefer_const_constructors, unnecessary_new
              borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              border: Border.all(color: const Color.fromRGBO(191, 191, 191, 1))
            ),
            child: Text(element.name!, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black)),
      ))

    ).toList();

    return ExpansionTile (
      // ignore: avoid_unnecessary_containers
      title: Container(
        // ignore: sort_child_properties_last
        child: Text(
              title,
              // ignore: prefer_const_constructors
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
        ),
      ),
      // ignore: sort_child_properties_last
      children: widgets,
      backgroundColor: Colors.white,
    );
  }
  
 
}