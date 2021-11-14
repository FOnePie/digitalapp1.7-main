import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

var preferMap = {"性能散热": 1, "外观质感": 2, "手感": 3, "摄像": 4, "续航": 5};
EventBus eventBus = new EventBus();

class ClickEvent {
  var content;
  bool click;
  ClickEvent(this.content, this.click);
}

class PreferButton extends StatefulWidget {
  final fontSize;
  final height;
  final content;
  final width;
  PreferButton(this.content, this.fontSize, this.width, this.height);
  @override
  _PreferButton createState() =>
      _PreferButton(this.content, this.fontSize, this.width, this.height);
}

class _PreferButton extends State<PreferButton> {
  final fontSize;
  final content;
  final height;
  final width;
  _PreferButton(this.content, this.fontSize, this.width, this.height);
  bool click = false;
  Color myColor;

  @override
  void initState() {
    super.initState();
    this.myColor = click ? Color.fromRGBO(114, 70, 255, 0.25) : Colors.white70;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            this.click = !this.click;
            this.myColor =
                click ? Color.fromRGBO(114, 70, 255, 0.25) : Colors.white70;
          });
          eventBus.fire(ClickEvent(this.content, this.click));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: height,
          width: width,
          child: Center(
              child: Text(
            content,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
          )),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(-1.0, 2.0), //阴影x轴偏移量
                    blurRadius: 8, //阴影模糊程度
                    spreadRadius: 4 //阴影扩散程度
                    )
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: this.myColor),
        ));
  }
}

class SearchPage extends StatefulWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _SearchPage(arguments: {this.arguments});
  }
}

class _SearchPage extends State<SearchPage> {
  final arguments;
  var preferResult = [];
  _SearchPage({this.arguments});

  @override
  void initState() {
    super.initState();
    eventBus
        .on<ClickEvent>()
        .listen((ClickEvent e) => changePreferInfo(e.click, e.content));
  }

  changePreferInfo(click, content) {
    var item = preferMap[content];
    if (mounted) {
      setState(() {
        if (!click) {
          preferResult.remove(item);
        } else {
          preferResult.add(preferMap[content]);
        }
      });
    }
    print(preferResult);
    print(preferResult.length);
  }

  @override
  void dispose() {
    super.dispose();
    preferResult = [];
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      "Flutter",
      "React",
      "Ionic",
      "Xamarin",
    ];
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text('搜索产品'),
          centerTitle: true,
          actions: [
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  print('按到了完成');
                },
                child: Text('完成',
                    style: TextStyle(color: Colors.white, fontSize: 16)))
          ],
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              SizedBox(height: 90),

              // Container(
              //     margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              //     // padding: EdgeInsets.all(padding),
              //     decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //               color: Colors.grey.withOpacity(0.10),
              //               offset: Offset(3.9, 5.0), //阴影x轴偏移量
              //               blurRadius: 6, //阴影模糊程度
              //               spreadRadius: 1 //阴影扩散程度
              //               )
              //         ],
              //         color: Color.fromRGBO(255, 255, 255, 0.90),
              //         borderRadius: BorderRadius.all(Radius.circular(30))),
              //     child: Column(
              //       children: <Widget>[
              //         // Icon(Icons.search),
              //         // IconButton(
              //         //   icon: Icon(Icons.search, size: 18),
              //         //   onPressed: () {
              //         //     // Navigator.pushNamed(context, '/search');
              //         //   },
              //         // ),

              //         // TextField(
              //         //   // width: 200,t5
              //         //   decoration: InputDecoration(
              //         //       // hintText: "",
              //         //       // border: OutlineInputBorder()
              //         //       ),
              //         // ),

              //         Container(
              //           // width: 200,
              //           child: TextField(
              //             // width: 200,t5
              //             decoration: InputDecoration(
              //                 // hintText: "",
              //                 // border: OutlineInputBorder()
              //                 ),
              //           ),
              //         ),
              //         // IconButton(
              //         //   icon: Icon(Icons.search, size: 25),
              //         //   onPressed: () {
              //         //     // Navigator.pushNamed(context, '/search');
              //         //   },
              //         // ),
              //       ],
              //     )),

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
                        .where((item) =>
                            item.toLowerCase().contains(query.toLowerCase()))
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
                          borderRadius: BorderRadius.all(Radius.circular(30))),
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
              // SizedBox(height: 2),
              getMyCard([
                // SizedBox(height: 20),
                SizedBox(width: 65),
                PreferButton('手机', 18.0, 90.0, 50.0),

                PreferButton('笔记本', 18.0, 90.0, 50.0),

                // SizedBox(height: 35),
              ], 0.0, 10.0, 0.0),
              getMyCard([
                // SizedBox(height: 20),
                SizedBox(width: 10),
                PreferButton('价格', 18.0, 90.0, 50.0),
                PreferButton('品牌', 18.0, 90.0, 50.0),
                PreferButton('评分', 18.0, 90.0, 50.0),
                // SizedBox(height: 35),
              ], 0.0, 10.0, 0.0),

              Column(
                children: [
                  SizedBox(height: 3),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.all(3),
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromRGBO(245, 245, 245, 0.9)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                // padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                                // child: Text('今日手机热门',
                                //     style: TextStyle(
                                //         fontSize: 22,
                                //         fontWeight: FontWeight.bold))
                                ),
                            Container(child: ItemRanks(), height: 250)
                          ])),
                  SizedBox(height: 3)
                ],
              ),

              // getMyCard([
              //   Offstage(
              //       offstage: preferResult.length == 0,
              //       child: Container(
              //           child: Text(
              //         '已选择：$preferResult',
              //         style: TextStyle(fontSize: 16, color: Colors.black54),
              //       )))
              // ], 0.0, 0.0, preferResult.length == 0 ? 0.0 : 15.0)
            ])));
  }
}

Widget getMyCard(content, top, bottom, padding) {
  return Container(
    margin: EdgeInsets.fromLTRB(10, top, 10, bottom),
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.10),
              offset: Offset(3.9, 5.0), //阴影x轴偏移量
              blurRadius: 6, //阴影模糊程度
              spreadRadius: 1 //阴影扩散程度
              )
        ],
        color: Color.fromRGBO(255, 255, 255, 0.70),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: Row(
      children: content,
    ),
  );
}

class ItemRanks extends StatelessWidget {
  final List _phoneRanks = [
    "小米10Ultra",
    "华为P40Pro",
    "vivoX50Pro",
    "三星Note20Ultra",
    "iPhone12ProMax",
    "华为Mate40Pro"
  ];
  List<Widget> _getData(context) {
    List<Widget> list = [];
    for (var i = 0; i < 6; i++) {
      list.add(Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/phone',
                  arguments: {"id": "${_phoneRanks[i]}"});
            },
            child: Column(
              children: [
                Image.network(
                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwx1.sinaimg.cn%2Fmw690%2F4b334432gy1gvua4ict3sj20m80m83zk.jpg&refer=http%3A%2F%2Fwx1.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1638542981&t=9a793a2d394c37e1a75c89145bdbf70b'),
                SizedBox(height: 5),
                Text(
                  '${_phoneRanks[i]}',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              ],
            ),
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(5.0),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 20.0,
      crossAxisCount: 3,
      childAspectRatio: 0.8,
      children: this._getData(context),
    );
  }
}
