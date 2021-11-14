import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SearchPostPage extends StatefulWidget {
  final arguments;
  SearchPostPage({Key key, this.arguments}) : super(key: key);

  // EditPage({this.arguments});
  @override
  _SearchPostPageState createState() =>
      _SearchPostPageState(arguments: {this.arguments});
}

class _SearchPostPageState extends State<SearchPostPage> {
  final arguments;
  _SearchPostPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    List list = [
      "冰宇宙",
      "大米",
      "小白",
      "科技美学",
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('查询帖子'),
          centerTitle: true,
          actions: [
            // TextButton(
            //     style: ButtonStyle(
            //         overlayColor:
            //             MaterialStateProperty.all(Colors.transparent)),
            //     onPressed: () {
            //       print('按到了发布');
            //     },
            //     child: Text('发布',
            //         style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // padding: EdgeInsets.all(padding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.10),
                            offset: Offset(3.9, 5.0), //阴影x轴偏移量
                            blurRadius: 6, //阴影模糊程度
                            spreadRadius: 1 //阴影扩散程度
                            )
                      ],
                      color: Color.fromRGBO(255, 255, 255, 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(children: [
                    SizedBox(height: 95),
                    Container(
                      height: 72,
                      // width: 400,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 0.8),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      margin: EdgeInsets.all(10.0),
                      child: GFSearchBar(
                        searchList: list,
                        searchQueryBuilder: (query, list) {
                          return list
                              .where((item) => item
                                  .toLowerCase()
                                  .contains(query.toLowerCase()))
                              .toList();
                        },
                        overlaySearchListItemBuilder: (item) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            // padding: EdgeInsets.all(padding),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.10),
                                      offset: Offset(3.9, 5.0), //阴影x轴偏移量
                                      blurRadius: 6, //阴影模糊程度
                                      spreadRadius: 1 //阴影扩散程度
                                      )
                                ],
                                color: Color.fromRGBO(255, 255, 255, 0.90),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              item,
                              style: const TextStyle(fontSize: 18),
                            ),
                          );
                        },
                        onItemSelected: (item) {
                          setState(() {
                            print('$item');
                          });
                        },
                      ),
                    ),
                    // SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      // padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.10),
                                offset: Offset(3.9, 5.0), //阴影x轴偏移量
                                blurRadius: 6, //阴影模糊程度
                                spreadRadius: 1 //阴影扩散程度
                                )
                          ],
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextField(
                        maxLines: 26,
                        decoration: InputDecoration(
                          hintText: "",
                          // border: OutlineInputBorder()
                        ),
                      ),
                    )
                  ])),
            ])));
  }
}
