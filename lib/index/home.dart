import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:getwidget/getwidget.dart';

List<Widget> cards = [];

class HomePage extends StatefulWidget {
  HomePage() {
    print('HomePage()');
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              title: Text('Tech Shore'),
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              centerTitle: false,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(context, '/searchpost');
                  },
                ),
              ],
            ),
            // body: Column(children: [
            //   Flexible(
            //     // child: assDisplay(),
            //     child: Container(),
            //   )
            // ]),
            body: ListView(
              children: <Widget>[
                Container(
                    height: 95,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/recommend.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: TextButton(
                        child: Text('产品推荐',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                            textAlign: TextAlign.center),
                        onPressed: () {
                          Navigator.pushNamed(context, '/recommend');
                        }),
                    margin: EdgeInsets.all(5.0)),
                // GFListTile(
                //     titleText: 'Title',
                //     subTitleText:
                //         'Lorem ipsum dolor sit amet, consectetur adipiscing',
                //     icon: Icon(Icons.favorite)),
                GestureDetector(
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(
                  //       Color.fromRGBO(245, 245, 245, 0.0)),
                  // ),
                  onTap: () {
                    Navigator.pushNamed(context, '/post');
                  },
                  child: Container(
                    // height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                              "http://img95.699pic.com/photo/50155/2515.jpg_wh860.jpg"),
                          title: Text('i冰宇宙'),
                          subtitle: Text(
                            '三星note系列借三星s22ultra之名复活三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活',
                            maxLines: 3,
                          ),
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 110),
                              IconButton(
                                icon: Icon(Icons.thumb_up, size: 18),
                                onPressed: () {},
                              ),
                              SizedBox(width: 25),
                              IconButton(
                                icon: Icon(Icons.question_answer, size: 18),
                                onPressed: () {},
                              ),
                              SizedBox(width: 25),
                              IconButton(
                                icon: Icon(Icons.grade, size: 18),
                                onPressed: () {},
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/post');
                  },
                  child: Container(
                    // height: 200,
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
                            '三星note系列借三星s22ultra之名复活三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活',
                            maxLines: 3,
                          ),
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 110),
                              IconButton(
                                icon: Icon(Icons.thumb_up, size: 18),
                                onPressed: () {},
                              ),
                              SizedBox(width: 25),
                              IconButton(
                                icon: Icon(Icons.question_answer, size: 18),
                                onPressed: () {},
                              ),
                              SizedBox(width: 25),
                              IconButton(
                                icon: Icon(Icons.grade, size: 18),
                                onPressed: () {},
                              )
                            ])
                      ],
                    ),
                  ),
                ),

                Container(
                  // height: 200,
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
                          '三星note系列借三星s22ultra之名复活三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活',
                          maxLines: 3,
                        ),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 110),
                            IconButton(
                              icon: Icon(Icons.thumb_up, size: 18),
                              onPressed: () {},
                            ),
                            SizedBox(width: 25),
                            IconButton(
                              icon: Icon(Icons.question_answer, size: 18),
                              onPressed: () {},
                            ),
                            SizedBox(width: 25),
                            IconButton(
                              icon: Icon(Icons.grade, size: 18),
                              onPressed: () {},
                            )
                          ])
                    ],
                  ),
                ),
                Container(
                  // height: 200,
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
                          '三星note系列借三星s22ultra之名复活三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活,三星note系列借三星s22ultra之名复活',
                          maxLines: 3,
                        ),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 110),
                            IconButton(
                              icon: Icon(Icons.thumb_up, size: 18),
                              onPressed: () {},
                            ),
                            SizedBox(width: 25),
                            IconButton(
                              icon: Icon(Icons.question_answer, size: 18),
                              onPressed: () {},
                            ),
                            SizedBox(width: 25),
                            IconButton(
                              icon: Icon(Icons.grade, size: 18),
                              onPressed: () {},
                            )
                          ])
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/newedit');
                },
                backgroundColor: Colors.white,
                child: Icon(Icons.edit, size: 30, color: Colors.deepPurple))));
  }
}

//百万/十万/万以上的单独显示单位，以下的直接显示
String cov2w(num x) {
  if (x > 1e9) return 'B+';
  return x > 1e4
      ? x > 1e5
          ? x > 1e6
              ? (x ~/ 1e6).toString() + 'M+'
              : (x ~/ 1e3).toString() + 'K+'
          : (x ~/ 1e3).toString() + 'K+'
      : x.toString();
}

// // ignore: camel_case_types
// class assDisplay extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getNews(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return _ProgressIndicator();
//         } else if (snapshot.connectionState == ConnectionState.done) {
//           return _createListView(context, snapshot);
//         } else
//           throw 'loading error';
//       },
//     );
//   }

//   // ignore: non_constant_identifier_names
//   Widget _ProgressIndicator() {
//     return Center(
//         child: CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation(Colors.pink[300]),
//             strokeWidth: 8));
//   }

//   Widget _createListView(BuildContext context, AsyncSnapshot snapshot) {
//     news = snapshot.data;
//     return ListView.builder(
//         itemBuilder: (context, index) => _itemBuilder(context, index, news),
//         itemCount: news.length + 1);
//   }

//   Widget _itemBuilder(context, index, news) {
//     if (index == 0)
//       return Container(
//           margin: EdgeInsets.all(3),
//           height: 160,
//           decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               image: DecorationImage(
//                   image: AssetImage('images/rec.png'), fit: BoxFit.cover)),
//           child: Center(
//             child: Text('Recommend',
//                 style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white)),
//           ));
//     return Dynamic(
//         author: news[index - 1].author,
//         title: news[index - 1].title,
//         content: news[index - 1].content,
//         date: news[index - 1].date);
//   }
// }

class Dynamic extends StatelessWidget {
  final String author;
  final String title;
  final String content;
  final String date;
  Dynamic({this.author, this.title, this.content, this.date});

  @override
  Widget build(BuildContext context) {
    var text = Text(this.date, style: TextStyle(color: Colors.black54));
    return Container(
        margin: EdgeInsets.all(3),
        constraints: BoxConstraints(maxHeight: 180.0),
        // height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromRGBO(245, 245, 245, 0.9)),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment(0, 0),
                        heightFactor: 1.4,
                        child: CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: AssetImage('images/cat.jpg'),
                        ))
                  ],
                )),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                        child: Text(this.author,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    Container(child: text),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                        child: Container(
                      child: Text(
                        this.content,
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    )),
                    Container(
                        child: Row(children: [
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                              iconSize: 28,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {}),
                          Expanded(
                              child: Text(cov2w(Random().nextInt(1e6.toInt())),
                                  style: TextStyle(fontSize: 17)))
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                              iconSize: 26,
                              icon: Icon(Icons.chat_bubble_outline),
                              onPressed: () {}),
                          Expanded(
                              child: Text(cov2w(Random().nextInt(1e6.toInt())),
                                  style: TextStyle(fontSize: 17)))
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(
                              iconSize: 30,
                              icon: Icon(Icons.star_border),
                              onPressed: () {}),
                          Expanded(
                              child: Text(cov2w(Random().nextInt(1e6.toInt())),
                                  style: TextStyle(fontSize: 17)))
                        ],
                      ))
                    ]))
                  ],
                )),
          ],
        ));
  }
}
