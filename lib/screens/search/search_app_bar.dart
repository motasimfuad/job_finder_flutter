import 'package:flutter/material.dart';
import 'package:job_finder_flutter/constants/colors.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        right: 25,
        left: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
              color: kPrimary,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_left,
              color: Colors.white,
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.timer_outlined,
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.more_horiz_outlined,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
