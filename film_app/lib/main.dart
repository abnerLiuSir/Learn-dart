import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      initialRoute:"/", //名为"/"的路由作为应用的home(首页)
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        "new_page":(context) => NewRoute(),
        "switchAndCheckBox_page": (context) => FormTestRoute(),
         "/":(context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
      } ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
              //导航到新路由   
                Navigator.pushNamed(context, "new_page");
                // Navigator.push( context,
                //   MaterialPageRoute(builder: (context) {
                //     return NewRoute();
                //   }));
              },
            ),
            OutlineButton.icon(
              label: Text("选择框"),
              icon: Icon(Icons.add),
              onPressed: (){
                Navigator.pushNamed(context, "switchAndCheckBox_page");
              },
            )
            // RouterTestRoute(),
            // RandomWordsWidget(),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column( 
            children: <Widget>[ 
              // Text("Hello world"*3,
              //   textAlign: TextAlign.left,
              // ),
              // Text("Hello world! I'm Jack. "*8,
              //   textAlign: TextAlign.center,
              // ),
              // Text("Hello world",
              //   textScaleFactor: 2.5,
              // ),
              // Text("Hello world",
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontSize: 18.0,
              //     height: 1.2,  
              //     fontFamily: "Courier",
              //     background: new Paint()..color=Colors.yellow,
              //     decoration:TextDecoration.underline,
              //     decorationStyle: TextDecorationStyle.dashed
              //   ),
              // ),
              // Text.rich(TextSpan(
              //   children: [
              //     TextSpan(
              //       text: "Home: "
              //     ),
              //     TextSpan(
              //       text: "https://flutterchina.club",
              //       style: TextStyle(
              //         color: Colors.blue
              //       ),  
              //     ),
              //   ]
              // )),
              // DefaultTextStyle(
              //   //1.设置文本默认样式  
              //   style: TextStyle(
              //     color:Colors.red,
              //     fontSize: 20.0,
              //   ),
              //   textAlign: TextAlign.start,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Text("hello world"),
              //       Text("I am Jack"),
              //       Text("I am Jack",
              //         style: TextStyle(
              //           inherit: false, //2.不继承默认样式
              //           color: Colors.grey
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // RaisedButton(
              //   child: Text("raise"),
              //   onPressed: () {},
              // ),
              // FlatButton(
              //   child: Text("flat"),
              //   onPressed: () {},
              // ),
              // OutlineButton(
              //   child: Text("Outline"),
              //   onPressed: () {},
              // ),
              // IconButton(
              //   icon: Icon(Icons.thumb_up),
              //   onPressed: () {},
              // ),
              // RaisedButton.icon(
              //   icon: Icon(Icons.send),
              //   label: Text("发送"),
              //   onPressed: () {},
              // ),
              // OutlineButton.icon(
              //   icon: Icon(Icons.add),
              //   label: Text("添加"),
              //   onPressed: () {},
              // ),
              // FlatButton.icon(
              //   icon: Icon(Icons.info),
              //   label: Text("详情"),
              //   onPressed: () {},
              // ),
              // RaisedButtongit(
              //   color: Colors.blue,
              //   highlightColor: Colors.blue[700],
              //   colorBrightness: Brightness.dark,
              //   splashColor: Colors.grey,
              //   child: Text("Submit"),
              //   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              //   onPressed: () {},
              // )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Icon(Icons.accessible,color: Colors.green,),
              //     Icon(Icons.error,color: Colors.green,),
              //     Icon(Icons.fingerprint,color: Colors.green,),
              //   ],
              // ),
              // Image(
              //   image: AssetImage("images/avatar.jpg"),
              //   width: 100.0
              // ),
              // Image.asset("images/avatar.jpg",
              //   width: 150.0
              // ),
              // Image(
              //   image: NetworkImage("https://www.baidu.com/img/bd_logo1.png"),
              //   width: 100.0,
              // ),
              // Image.network(
              //   "https://www.baidu.com/img/bd_logo1.png",
              //   width: 150.0,
              // ),
              // Image(
              //   image: AssetImage("images/avatar.jpg"),
              //   width: 100.0,
              //   color: Colors.blue,
              //   colorBlendMode: BlendMode.difference,
              // ),
              // Image(
              //   image: AssetImage("images/avatar.jpg"),
              //   width: 100.0,
              //   height: 200.0,
              //   repeat: ImageRepeat.repeatY ,
              // )
            ]
          )
        )
      ),
    );
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() => new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _upasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("switch and checkbox"),
      ),
      body: Container (
        child: Column(
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                  hintColor: Colors.grey[200], //定义下划线颜色
                  inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(color: Colors.red),//定义label字体样式
                      hintStyle: TextStyle(color: Colors.yellow, fontSize: 14.0)//定义提示文本样式
                  )
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "密码",
                        hintText: "您的登录密码",

                    ),
                    obscureText: true,
                  )
                ],
              )
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "电子邮件地址",
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none //隐藏下划线
                )
              ),
              decoration: BoxDecoration(
                  // 下滑线浅灰色，宽度1像素
                  border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))
              ),
            )
          ],
        )
      ),
    );
  }
}
class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => new _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Form Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)
                  ),
                  // 校验用户名
                  validator: (v) {
                    return v
                        .trim()
                        .length > 0 ? null : "用户名不能为空";
                  }

              ),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v
                        .trim()
                        .length > 5 ? null : "密码不能少于6位";
                  }
              ),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme
                            .of(context)
                            .primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。 
                          if((_formKey.currentState as FormState).validate()){
                            //验证通过提交数据
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}