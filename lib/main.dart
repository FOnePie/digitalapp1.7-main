import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';
// import 'index/index.dart';
import 'pages/phone.dart';
import 'pages/phoneGrade.dart';
import 'pages/favourate.dart';
import 'pages/prefer.dart';
import 'login/Login.dart';
import 'login/LoginUserName.dart';
// import 'login/LoginUserName.dart';
import 'login/Register.dart';
import 'index/tabs.dart';

void main() {
  debugPaintSizeEnabled = false;

  if (Platform.isAndroid) {
    // 这一步设置状态栏颜色为透明
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/phone': (context, {arguments}) => PhonePage(arguments: arguments),
    '/phoneGrade': (context, {arguments}) =>
        PhoneGradePage(arguments: arguments),
    '/favourate': (context, {arguments}) =>
        TabBarAndTopTab(arguments: {arguments}),
    '/prefer': (context, {arguments}) => PreferPage(arguments: {arguments}),
    '/login': (context, {arguments}) => LoginPage(arguments: {arguments}),
    '/register': (context, {arguments}) => RegisterPage(arguments: {arguments}),
    '/tabs': (context, {arguments}) => TabsPage(arguments: {arguments}),
    '/loginusername': (context, {arguments}) =>
        LoginUserNamePage(arguments: {arguments})
  };
  MyApp() {
    print('MyApp()');
  }

  @override
  Widget build(BuildContext context) {
    print('MyApp build()');
    return MaterialApp(
        // ignore: missing_return
        onGenerateRoute: (RouteSettings settings) {
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        },
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginContext(),
        ));
  }
}

class LoginContext extends StatefulWidget {
  LoginContext({Key key}) : super(key: key);

  @override
  _LoginContextState createState() => _LoginContextState();
}

class _LoginContextState extends State<LoginContext> {
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
        // child:Image.asset('images/background.jpg')
        child: Scaffold(
            // extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                height: 650,
                width: 400,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: <
                        Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                      Widget>[
                    Container(
                        height: 56.0,
                        width: 140.0,
                        child: ElevatedButton(
                            child: Text('登录', style: TextStyle(fontSize: 20)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => LoginPage()));
                              Navigator.pushNamed(context, '/login');
                            })),
                    SizedBox(width: 20),
                    Container(
                        height: 56.0,
                        width: 140.0,
                        child: ElevatedButton(
                            child: Text('注册', style: TextStyle(fontSize: 20)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black)),
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => RegisterPage()));
                              Navigator.pushNamed(context, '/register');
                            }))
                  ])
                ]))));
  }
}
