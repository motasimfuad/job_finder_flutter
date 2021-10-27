import 'package:flutter/material.dart';
import 'package:job_finder_flutter/constants/colors.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: selected == index
                        ? kPrimary.withOpacity(0.2)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: selected == index
                          ? kPrimary
                          : kPrimary.withOpacity(0.2),
                    ),
                  ),
                  child: Text(tagLists[index]),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 15),
          itemCount: tagLists.length),
    );
  }
}
