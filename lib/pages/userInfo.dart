import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  final arguments;
  UserInfoPage({this.arguments});
  @override
  State<StatefulWidget> createState() {
    return _UserInfoPage(arguments: this.arguments);
  }
}

class _UserInfoPage extends State<UserInfoPage> {
  final arguments;
  _UserInfoPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的信息'),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.purple[100]),
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              infoItem(
                  "头像",
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img1.baidu.com/it/u=3755297117,609162545&fm=26&fmt=auto'),
                  ), func: () {
                Navigator.pushNamed(context, '/updateAvatar');
              }),
              SizedBox(height: 20),
              infoItem(
                  "用户名",
                  Text(
                    'username',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ), func: () {
                Navigator.pushNamed(context, '/updateID');
              }),
              infoItem(
                  "密码",
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ), func: () {
                Navigator.pushNamed(context, '/updatePwd');
              }),
              infoItem(
                  "身份认证",
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  func: () {}),
              SizedBox(height: 20),
              infoItem(
                  "等级",
                  Text(
                    "LV 6",
                    style: TextStyle(fontSize: 18),
                  )),
              infoItem(
                  "经验",
                  Text(
                    "126/128",
                    style: TextStyle(fontSize: 18),
                  )),
              infoItem(
                  "注册时间",
                  Text(
                    "2022/2/2",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          )),
    );
  }
}

Widget infoItem(leadingText, trailingItem, {Function func}) {
  return Card(
      child: ListTile(
          onTap: func,
          leading: Text(
            leadingText,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: trailingItem));
}
