import 'package:flutter/material.dart';
// import 'LoginUserName.dart';
// import '../index/tabs.dart';

class LoginPage extends StatefulWidget {
  final arguments;
  LoginPage({Key key, this.arguments}) : super(key: key);

  // LoginPage({this.arguments});

  @override
  _LoginPageState createState() => _LoginPageState(arguments: {this.arguments});
}

class _LoginPageState extends State<LoginPage> {
  final arguments;
  _LoginPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            // Image.asset('images/a.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                height: 650,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('欢迎使用',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.end),
                    SizedBox(height: 120),
                    Container(
                      height: 56.0,
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "    手机号", border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 56.0,
                      width: 230,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "    密码", border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 56.0,
                              width: 230.0,
                              child: ElevatedButton(
                                  child: Text('登       录',
                                      style: TextStyle(fontSize: 18)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue)),
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) => TabsPage()));
                                    Navigator.pushNamed(context, '/tabs');
                                  })),
                          // SizedBox(height: 20),
                          // Container(
                          //     height: 56.0,
                          //     width: 230.0,
                          //     child: ElevatedButton(
                          //         child: Text('注       册',
                          //             style: TextStyle(fontSize: 18)),
                          //         style: ButtonStyle(
                          //             backgroundColor:
                          //                 MaterialStateProperty.all(
                          //                     Colors.white),
                          //             foregroundColor:
                          //                 MaterialStateProperty.all(
                          //                     Colors.black)),
                          //         onPressed: () {
                          //           // Navigator.of(context).push(
                          //           //   MaterialPageRoute(
                          //           //     builder: (context)=>RegisterPage()
                          //           //   )
                          //           // );
                          //         })),
                          SizedBox(height: 10),
                          Container(
                              // height: 56.0,
                              // width: 100.0,
                              child: TextButton(
                                  child: Text('使用用户名登录',
                                      style: TextStyle(fontSize: 15)),
                                  style: ButtonStyle(
                                      // backgroundColor:
                                      //     MaterialStateProperty.all(
                                      //         Colors.white),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             LoginUserNamePage())
                                    //             );
                                    Navigator.pushNamed(
                                        context, '/loginusername');
                                  }))
                        ])
                  ],
                ))));
  }
}
