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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                color: kPrimary,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, right: 10),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              const Icon(
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
