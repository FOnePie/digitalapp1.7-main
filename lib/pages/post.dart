import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  PostPage({Key key, this.arguments}) : super(key: key);
  final arguments;
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final arguments;
  _PostPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('帖子'),
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              centerTitle: false,
            ),
            body: ListView(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                              "http://img.keaitupian.cn/uploads/2020/05/av4kmjuso3b.jpg"),
                          title: Text('i冰宇宙'),
                          subtitle: Text(
                            '三星note系列借三星s22ultra之名复活三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活ultra之名复活,三星note系列借三星s22ultra之名复活',
                            // maxLines: 3,
                          ),
                        ),
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.thumb_up, size: 18),
                            onPressed: () {},
                          ),
                          // SizedBox(width: 25),
                          IconButton(
                            icon: Icon(Icons.question_answer, size: 18),
                            onPressed: () {},
                          ),
                          // SizedBox(width: 25),
                          IconButton(
                            icon: Icon(Icons.grade, size: 18),
                            onPressed: () {},
                          )
                        ])),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '评论区',
                          style: TextStyle(fontSize: 20),
                        ),
                        ListTile(
                          leading: Image.network(
                              "https://images6.alphacoders.com/679/thumbbig-679461.jpg"),
                          title: Text('墨菲'),
                          subtitle: Text(
                            '这手机真不错',
                            maxLines: 3,
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.thumb_up, size: 18),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          leading: Image.network(
                              "https://images6.alphacoders.com/679/thumbbig-679461.jpg"),
                          title: Text('墨菲'),
                          subtitle: Text(
                            '这手机真不错',
                            maxLines: 3,
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.thumb_up, size: 18),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          leading: Image.network(
                              "https://images6.alphacoders.com/679/thumbbig-679461.jpg"),
                          title: Text('墨菲'),
                          subtitle: Text(
                            '这手机真不错',
                            maxLines: 3,
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.thumb_up, size: 18),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  margin: EdgeInsets.all(5.0),
                  child: Container(
                    height: 56.0,
                    width: 230,
                    child: TextField(
                      // obscureText: true,
                      decoration: InputDecoration(hintText: "  说点什么吧"),
                    ),
                  ),
                )
              ],
            )));
  }
}
