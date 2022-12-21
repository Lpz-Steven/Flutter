import 'package:flutter/material.dart';

class ListTileItem extends StatefulWidget {
  @override
  _ListTileItemState createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Row(
        children: <Widget>[
          _itemCount!=0? IconButton(icon: const Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):Container(),
          Text(_itemCount.toString()),
          IconButton(icon: const Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))
        ],
      ),
    );
  }
}