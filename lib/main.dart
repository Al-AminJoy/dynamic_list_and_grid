import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _user= List.filled(50, 'Joy');
  Widget _contentListView(){
    return ListView.builder(
      itemCount: _user.length,
      itemBuilder: (context, index) =>
          Card(child: ListTile(title: Text(_user[index]),)),
    );
  }

  Widget _contentGridView(){
    return GridView.builder(
      itemCount: _user.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) =>
          Card(
            child: Center(
              child: ListTile(
                title: Text(_user[index]),
              ),
            ),
          ),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            title: Text('List & Grid'),
            bottom: TabBar(tabs: [Text('List'),Text('Grid')],),
          ),
          body: TabBarView(children: [
            _contentListView(),
            _contentGridView(),
          ]),
        ),
      ),

    );
  }
}
