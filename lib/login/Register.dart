import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.arguments}) : super(key: key);
  final arguments;
  // RegisterPage({this.arguments});
  @override
  _RegisterPageState createState() =>
      _RegisterPageState(arguments: {this.arguments});
}

class _RegisterPageState extends State<RegisterPage> {
  final arguments;
  _RegisterPageState({this.arguments});
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
                height: 600,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        child: Text('欢迎注册',
                            style:
                                TextStyle(fontSize: 28, color: Colors.white))),
                    SizedBox(height: 20),
                    Container(
                        child: Text('小白的福音，数码爱好者的天堂',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white))),
                    SizedBox(height: 180),
                    Container(
                      height: 56.0,
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "  请输入手机号", border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 56.0,
                              width: 230,
                              child: ElevatedButton(
                                  child: Text('注   册',
                                      style: TextStyle(fontSize: 18)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue)),
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     // builder: (context)=>LoginPage()
                                    //   )
                                    // );
                                  })),
                        ])
                  ],
                ))));
  }
}
