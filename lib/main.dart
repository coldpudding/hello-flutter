import 'package:flutter/material.dart';

main() => runApp(App());

class TextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Text("Wow, Hello World!")
    );
  }
}
class App extends StatelessWidget {
  // final TextDecoration textDecoration = TextDecoration.;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("我的 Flutter Demo")
        ),
        body: HomePage()
      )
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const data = [
      ["标题1", "描述1描述1描述1描述1描述1描述1", "http://pic1.win4000.com/wallpaper/8/546b16a7cfa03.jpg"],
      ["标题1", "描述1描述1描述1描述1描述1描述1", "http://pic1.win4000.com/wallpaper/8/546b16a7cfa03.jpg"],
      ["标题1", "描述1描述1描述1描述1描述1描述1", "http://pic1.win4000.com/wallpaper/8/546b16a7cfa03.jpg"],
    ];
    final cardViewList = List<CardView>.from(
      data.map((data) => CardView(data[0], data[1], data[2]))
    );
    return Container(
      child: ListView(
        children: [
          ...cardViewList,
          SizedBox(height: 8)
        ]
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageurl;

  CardView(this.title, this.subtitle, this.imageurl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey)
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle( fontSize: 30 )
          ),
          SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey, fontSize: 18 )
          ),
          Image.network(imageurl)
        ],
      ),
    );
  }

}