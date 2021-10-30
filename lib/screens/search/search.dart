import 'package:flutter/material.dart';
import 'package:job_finder_flutter/screens/search/search_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(),
              flex: 2,
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade100,
              ),
              flex: 1,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchAppBar(),
          ],
        )
      ],
    ));
  }
}
