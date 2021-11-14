import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  RecommendPage({Key key, this.arguments}) : super(key: key);
  final arguments;
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  final arguments;
  _RecommendPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('产品推荐'),
              centerTitle: true,
              // actions: [
              //   TextButton(
              //       style: ButtonStyle(
              //           overlayColor:
              //               MaterialStateProperty.all(Colors.transparent)),
              //       onPressed: () {
              //         print('按到了');
              //       },
              //       child: Text('收藏',
              //           style: TextStyle(color: Colors.white, fontSize: 16)))
              // ],
              bottom: TabBar(tabs: <Widget>[Tab(text: "手机"), Tab(text: "笔记本")]),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Container(
                            // height: 200,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text('您的偏好为:1 拍照，2 性能'),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prefer');
                                    },
                                    child: Text('可以点击重新设置哦')),
                                Text('请输入价格区间为您推荐'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: 72,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            // hintText: "",
                                            border: OutlineInputBorder()),
                                      ),
                                    ),
                                    // TextField(
                                    //   decoration: InputDecoration(
                                    //       hintText: "    手机号",
                                    //       border: OutlineInputBorder()),
                                    // ),
                                    Text("   到  "),
                                    Container(
                                      width: 72,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            // hintText: "",
                                            border: OutlineInputBorder()),
                                      ),
                                    ),
                                    Text("   元  "),
                                    IconButton(
                                      icon: Icon(Icons.search, size: 18),
                                      onPressed: () {},
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Column(
                          children: [
                            SizedBox(height: 3),
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                margin: EdgeInsets.all(3),
                                height: 280,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromRGBO(245, 245, 245, 0.9)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      ],
                    )),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Container(
                            // height: 200,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text('您的偏好为:1 拍照，2 性能'),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prefer');
                                    },
                                    child: Text('可以点击重新设置哦')),
                                Text('请输入价格区间为您推荐'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: 72,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            // hintText: "",
                                            border: OutlineInputBorder()),
                                      ),
                                    ),
                                    // TextField(
                                    //   decoration: InputDecoration(
                                    //       hintText: "    手机号",
                                    //       border: OutlineInputBorder()),
                                    // ),
                                    Text("   到  "),
                                    Container(
                                      width: 72,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            // hintText: "",
                                            border: OutlineInputBorder()),
                                      ),
                                    ),
                                    Text("   元  "),
                                    IconButton(
                                      icon: Icon(Icons.search, size: 18),
                                      onPressed: () {},
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Column(
                          children: [
                            SizedBox(height: 3),
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                margin: EdgeInsets.all(3),
                                height: 280,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromRGBO(245, 245, 245, 0.9)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      ],
                    )),
              ],
            )));
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
