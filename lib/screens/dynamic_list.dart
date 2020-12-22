import 'package:flutter/material.dart';

class DynamicListPage extends StatefulWidget {
  DynamicListPage({Key key}) : super(key: key);

  @override
  _DynamicListPageState createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {
  final items = List<String>.generate(100, (index) => "Items $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${items[index]}'),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
