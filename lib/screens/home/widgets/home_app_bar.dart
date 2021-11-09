import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          right: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome home',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'motasimfuad',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, right: 10),
                  transform: Matrix4.rotationZ(100),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Colors.grey.shade600,
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
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset('assets/images/avatar.png'),
                  backgroundColor: Colors.white,
                  radius: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
