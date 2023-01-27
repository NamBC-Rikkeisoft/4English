
import 'dart:convert';

import 'package:four_english/models/content_model.dart';

class TitleModel {
  String? title;
  List<ContentModel>? contents;

  TitleModel({
    this.title,
    this.contents
  });

  TitleModel.fromJson(Map<String, dynamic> jsonObject) {
    title = jsonObject['title'];
    dynamic contentJson = json.decode(json.encode(jsonObject["content"])); 
    contents = [];
    for (var element in contentJson) {
      ContentModel contentModel = ContentModel.fromJson(element);
      contents?.add(contentModel);
    }
  }
}