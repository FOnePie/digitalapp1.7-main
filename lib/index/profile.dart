import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage() {
    print('ProfilePage()');
  }
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple[700],
            ),
            child: UnconstrainedBox(
              child: CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage(
                  'images/morty.png',
                ),
              ),
            ),
          ),
          ListTile(
            // 子项
            leading: Icon(Icons.settings),
            title: Text("设置"),
            onTap: () {},
          ),
          ListTile(
            // 子项
            leading: Icon(Icons.person),
            title: Text("个人"),
            onTap: () {},
          ),
          ListTile(
            // 子项
            leading: Icon(Icons.build_circle),
            title: Text("关于"),
            onTap: () {},
          ),
        ],
      )),
      backgroundColor: Colors.purple[50],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
                height: 160,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple[700],
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30))))),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 120.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              margin: EdgeInsets.only(left: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '毛毛妈',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text('paper, scissors, stone',
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 13),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("285",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text("关注")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 1,
                                      height: 30,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200]),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("999+",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text("粉丝")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 1,
                                      height: 30,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200]),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("650",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text("被赞")
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                          top: -35,
                          left: 195,
                          child: Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 16.0),
                          )),
                      Positioned(
                          top: -30,
                          left: 200,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage('images/mmm.jpg'))),
                            margin: EdgeInsets.only(left: 16.0),
                          )),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("常用操作"),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: InkWell(
                                    onTap: () {
                                      print("我的收藏夹！");
                                      Navigator.pushNamed(
                                          context, '/favourate');
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        margin: EdgeInsets.all(5),
                                        child: ListTile(
                                          title: Text('收藏',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          subtitle: Text('查看我的收藏',
                                              style: TextStyle(fontSize: 11)),
                                          trailing: Icon(Icons.folder_open),
                                        )))),
                            Expanded(
                                child: InkWell(
                                    onTap: () {
                                      print('偏好');
                                      Navigator.pushNamed(context, '/prefer');
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: ListTile(
                                          title: Text('偏好设置',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          subtitle: Text('设置推荐偏好',
                                              style: TextStyle(fontSize: 11)),
                                          trailing: Icon(Icons.assignment),
                                        )))),
                          ],
                        ),
                        Row(children: [
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: ListTile(
                                    title: Text('我的帖子',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text('查看发帖历史',
                                        style: TextStyle(fontSize: 11)),
                                    trailing: Icon(Icons.history),
                                  ))),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: ListTile(
                                    title: Text('我的信息',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text('设置我的个人信息',
                                        style: TextStyle(fontSize: 11)),
                                    trailing: Icon(Icons.person_pin),
                                  ))),
                        ]),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                    height: 100,
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.all(5),
                                    child: Ink(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: InkWell(
                                            highlightColor: Colors.transparent,
                                            splashColor: Colors.purple[50],
                                            customBorder:
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            onTap: () {},
                                            child: Center(
                                                child: Text(
                                              "A.D.",
                                              style: TextStyle(
                                                  fontSize: 36,
                                                  color: Colors.grey),
                                            ))))))
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 60,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.grey[200],
                                  customBorder: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  onTap: () {},
                                  child: Center(
                                      child: Text('退出登录',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20))),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}
