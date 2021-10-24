import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final List tagLists = ['All', '⚡ Popular', '⭐ Featured'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tag lists'),
    );
  }
}
