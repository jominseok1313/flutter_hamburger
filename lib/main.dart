import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //Widget은 타입이라 생각하고 build메소드는 
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("이미지 위치"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("이미지 주소"),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text("BBANTO"),
              accountEmail: Text('whalstjr1313@naver.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print("Home is cliked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('settings'),
              onTap: () {
                print("settings is cliked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.grey[850],
              ),
              title: Text('message'),
              onTap: () {
                print("message is cliked");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}