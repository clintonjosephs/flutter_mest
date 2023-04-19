import 'package:flutter/material.dart';

import '../models/list_item.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<ListItem> items = [
    ListItem(subTitle: "God is good", title: "Clinton"),
    ListItem(subTitle: "I am a hero", title: "IP Hero"),
    ListItem(subTitle: "They killed his dog", title: "John Wick", type: "X")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View sample"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            ListItem item = items[index];
            if (item.type == null) {
              return _itemView(item);
            } else {
              return _headerView(item);
            }
          }),
    );
  }

  Widget _headerView(ListItem item) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16),
      child: Text(item.title),
    );
  }

  Widget _itemView(ListItem value) {
    return ListTile(
      leading: ClipOval(
        child: Container(
          color: Colors.red,
          height: 60,
          width: 60,
          child: Image.asset("assets/images/dog.png"),
        ),
      ),
      title: Text(value.title),
      subtitle: Text(value.subTitle),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
