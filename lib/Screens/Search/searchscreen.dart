import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/Widgets/uihelper.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchcontroller = TextEditingController();

  void dispose() {
    searchcontroller.dispose();
    super.dispose();
  }

  final List<Map<String, String>> items = [
    {"imgurl": "Icon (2).png", "text": "IGTV"},
    {"imgurl": "shopping.png", "text": "Shop"},
    {"text": "Style"},
    {"text": "Sports"},
    {"text": "Auto"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 327,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFF262626)),
                child: TextField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon:
                          Uihelper.CustomImage(imgurl: "Search Icon.png"),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF8E8E93),
                          fontWeight: FontWeight.normal),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomImage(imgurl: "Live.png"),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((item) {
            return Row(
              children: [
                Container(
                    height: 32,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white24),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        item["imgurl"] != null && item["imgurl"]!.isNotEmpty
                            ? Uihelper.CustomImage(imgurl: item["imgurl"]!)
                            : const SizedBox(),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          item["text"]!,
                          style:
                              TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                        )
                      ],
                    )),
                const SizedBox(width: 7),
              ],
            );
          }).toList(),
        ),
      ],
    ));
  }
}
