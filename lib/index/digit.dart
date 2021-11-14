import 'package:flutter/material.dart';

class DigitPage extends StatefulWidget {
  DigitPage() {
    print('DigitPage()');
  }
  @override
  _DigitPagePageState createState() => _DigitPagePageState();
}

class _DigitPagePageState extends State<DigitPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Tech Shore'),
            centerTitle: false,
            shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
            ],
          ),
          body: getBody(),
        ));
  }

  Widget getBody() {
    return ListView(
      children: [
        SizedBox(height: 3),
        Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.all(3),
            height: 395,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(245, 245, 245, 0.9)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                  child: Text('今日手机热门',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold))),
              Container(child: ItemRanks(), height: 300)
              // Column(
              //   children: [
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //           color: Colors.pink,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('小米10Ultra'),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //           color: Colors.red,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('华为P40Pro'),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //           color: Colors.green,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('vivoX50Pro+'),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // Column(
              //   children: [
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //           color: Colors.pink,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('三星Note20Ultra'),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //           color: Colors.red,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('iPhone12ProMax'),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           color: Colors.green,
              //           width: 80,
              //           height: 108,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(2),
              //           width: 86,
              //           child: Text('华为Mate40Pro'),
              //         ),
              //       ],
              //     ),
              //   ],
              // )
            ])),
        Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.all(3),
            height: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(245, 245, 245, 0.9)),
            child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 345),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                          child: Text('今日笔记本热门',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.pink,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('联想小新Pro13'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.red,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('华为MateBookX'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.green,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('苹果MacbookPro13'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.pink,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('ROG幻15'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.red,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('微软SurfacePro'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    color: Colors.green,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    width: 86,
                                    child: Text('戴尔战66'),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ]))),
        SizedBox(height: 3)
      ],
    );
  }
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
