import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.accessible,color: Colors.green,),
                  Icon(Icons.error,color: Colors.green,),
                  Icon(Icons.fingerprint,color: Colors.green,),
                ],
              ),
              Image(
                image: AssetImage("images/avatar.jpg"),
                width: 100.0
              ),
              Image.asset("images/avatar.jpg",
                width: 150.0
              ),
              Image(
                image: NetworkImage("https://www.baidu.com/img/bd_logo1.png"),
                width: 100.0,
              ),
              Image.network(
                "https://www.baidu.com/img/bd_logo1.png",
                width: 150.0,
              ),
              Image(
                image: AssetImage("images/avatar.jpg"),
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),
              Image(
                image: AssetImage("images/avatar.jpg"),
                width: 100.0,
                height: 200.0,
                repeat: ImageRepeat.repeatY ,
              )
            ]
          )
        )
      ),
    );
  }
}
