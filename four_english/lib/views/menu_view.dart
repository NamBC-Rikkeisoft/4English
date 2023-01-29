import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:four_english/models/title_model.dart';
import 'package:four_english/widgets/item_title.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<StatefulWidget> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  var language = 1;
  var titles = [
    {
      "title": "1. Danh từ",
      "content": [
          {
            "name": "Danh Từ là gì",
            "file": ""
          },
          {
            "name": "Danh Từ Ghép (Compound Noun)",
            "file": ""
          },
          {
            "name": "Đại Từ (Pronouns)",
            "file": ""
          },
          {
            "name": "Phân biệt each other/another/other/others/the other/the others",
            "file": ""
          },
          {
            "name": "Eithei và Neither",
            "file": ""
          },
          {
            "name": "Cụm danh từ (Noun phrase)",
            "file": ""
          }
      ]
    },
    {
      "title": "2. Động từ",
      "content": [
        {
            "name": "Trợ động từ",
            "file": ""
          },
          {
            "name": "Cụm động Từ Nguyên Mẫu (Infinitive Phrase)",
            "file": ""
          },
          {
            "name": "Cụm Danh Động Từ",
            "file": ""
          },
          {
            "name": "Cụm Phân Từ",
            "file": ""
          },
          {
            "name": "Cấu Trúc Tuyệt Đối (Absolute Phrase)",
            "file": ""
          },
          {
            "name": "Động từ khuyết thiếu (Modal Verb)",
            "file": ""
          },
          {
            "name": "Bảng động từ bất quy tắc",
            "file": ""
          }
      ]
    },
    {
      "title": "3. Tính từ",
      "content": [
          {
            "name": "Định nghĩa và Phân loại ADJ",
            "file": ""
          },
          {
            "name": "Tính Từ Ghép (Compound Adjective)",
            "file": ""
          },
          {
            "name": "Vị trí, thứ tự của Tính Từ",
            "file": ""
          },
      ]
    },
    {
      "title": "4. Trạng từ",
      "content": [
          {
            "name": "Định nghĩa, vị trí của Trạng Từ(ADV)",
            "file": ""
          },
          {
            "name": "Dấu hiệu nhận biết một ADV",
            "file": ""
          },
          {
            "name": "Phân loại Trạng Từ",
            "file": ""
          },
      ]
    },
    {
      "title": "5. Câu đơn",
      "content": [
          {
            "name": "Câu Mệnh Đề",
            "file": ""
          },
          {
            "name": "Câu Khẳng Định",
            "file": ""
          },
          {
            "name": "Câu Yêu Cầu - Câu gợi ý - Câu Đề Nghị",
            "file": ""
          },
          {
            "name": "Câu Bị Động (Passive Voice)",
            "file": ""
          },
          {
            "name": "Câu Cầu Khiến",
            "file": ""
          },
          {
            "name": "Câu Cảm Thán",
            "file": ""
          },
          {
            "name": "Câu Hỏi Đuôi",
            "file": ""
          }
      ]
    },
    {
      "title": "6. Câu Phức",
      "content": [
          {
            "name": "Câu Điều Kiện",
            "file": ""
          },
          {
            "name": "Câu Giả Định",
            "file": ""
          },
          {
            "name": "Câu Đơn và Câu Ghép",
            "file": ""
          },
          {
            "name": "Cấu trúc Wish",
            "file": ""
          },
          {
            "name": "Cấu trúc if Only (Giá mà)",
            "file": ""
          },
          {
            "name": "As if/As though/Would rather/It's high time",
            "file": ""
          },
          {
            "name":  "Câu Tường Thuật",
            "file": ""
          },
          {
            "name": "Câu So Sánh (Comparisons)",
            "file": ""
          },
          {
            "name": "Cấu Trúc Đảo Ngữ (Inversion)",
            "file": ""
          },
          {
            "name": "Chủ Ngữ Giả (Dummy Subjects)",
            "file": ""
          }
      ]
    },
    {
      "title": "7. Mệnh đề",
      "content": [
          {
            "name": "Mệnh Đề Quan Hệ (Relative Clause)",
            "file": ""
          },
          {
            "name": "Mệnh Đề Trạng Ngữ (Adverbial Clause)",
            "file": ""
          },
          {
            "name": "Mệnh đề Danh Ngữ (Noun Clause)",
            "file": ""
          },
          {
            "name": "Rút gọn các loại mệnh đề",
            "file": ""
          },
      ]
    },
    {
      "title": "8. Present Tense - Thì hiện tại",
      "content": [
          {
            "name": "Thì Hiện Tại Đơn (Singple Present Tense)",
            "file": ""
          },
          {
            "name": "Thì hiện tại tiếp diễn (Present continuous tense)",
            "file": ""
          },
          {
            "name": "Thì hiện tại hoàn thành (Present Perfect Tense)",
            "file": ""
          },
          {
            "name": "Thì hiện tại hoàn thành tiếp diễn (Present Perfect Coutinuous)",
            "file": ""
          },
      ]
    },
    {
      "title": "9. Past Tense - Thì quá khứ",
      "content": [
          {
            "name": "Thì quá khứ đơn (Simple past tense)",
            "file": ""
          },
          {
            "name": "Thì quá khứ tiếp diễn (Past Continuous Tense)",
            "file": ""
          },
          {
            "name": "Thì quá khứ hoàn thành (Past Perfect Tense)",
            "file": ""
          },
          {
            "name": "Thì quá khứ hoàn thành tiếp diễn (Past Perfect Continuous)",
            "file": ""
          },
      ]
    },
    {
      "title": "10. Future Tense - Thì tương lai",
      "content": [
          {
            "name": "Thì tương lai đơn (Simple future Tense)",
            "file": ""
          },
          {
            "name": "Thì tương lai gần (Be going to)",
            "file": ""
          },
          {
            "name": "Thì tương lai tiếp diễn (Future Continuous Tense)",
            "file": ""
          },
          {
            "name": "Thì tương lai hoàn thành (Future Perfect Tense)",
            "file": ""
          },
          {
            "name": "Thì tương lai hoàn thành tiếp diễn (Future Perfect Continuous)",
            "file": ""
          },
      ]
    }
  ];
  static const String _title = 'Ngữ pháp';  
  late List<TitleModel> titleObjects;

  _fetchData() async {
    titleObjects = [];
    List<dynamic> listTitleJson = json.decode(json.encode(titles)); 
    for (var element in listTitleJson) {
      TitleModel titleModel = TitleModel.fromJson(element);
      titleObjects.add(titleModel);
    }

    // final String response = await rootBundle.loadString('assets/jsons/grammar.json');
    // final data = await json.decode(response);
    // var grammar = [];
    // if (language == 1) {
    //   grammar = data[0];
    // } else if(language == 2) {
    //    grammar = data[1];
    // }

    // for (var element in grammar) {
    //     TitleModel titleModel = TitleModel.fromJson(element);
    //     titleObjects.add(titleModel);
    // }
  }

  @override
  void initState() {
    super.initState();
    titleObjects = [];
    _fetchData();

    // ignore: unnecessary_new
    // new Future<String>.delayed(
    //   // ignore: prefer_const_constructors
    //   Duration(seconds: 2), 
    //     () async => await rootBundle.loadString('assets/jsons/grammar.json'),
    // ).then((String value) async {
    //   final data = await json.decode(value);
    //   var grammar = [];
    //   List<TitleModel> listGrammarObjects = [];
    //   if (language == 1) {
    //     grammar = data[0];
    //   } else if(language == 2) {
    //     grammar = data[1];
    //   }
    //   for (var element in grammar) {
    //     TitleModel titleModel = TitleModel.fromJson(element);
    //     listGrammarObjects.add(titleModel);
    //   }
    //   setState(() {
    //     titleObjects = listGrammarObjects;
    //   });
    // }); 
  } 

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(_title , style: TextStyle(color: Colors.black)), backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: titleObjects.isEmpty? 
            <Widget>[
              const Text("Loading...")
            ]
          :
          // ignore: prefer_const_literals_to_create_immutables
          <Widget>[
            ...titleObjects.map((element) => ItemTitle(title: element.title!, contents: element.contents!)).toList()
          ]
        
      )
    );
  }
}