import 'package:flutter/material.dart';
import 'package:job_finder_flutter/screens/home/widgets/home_app_bar.dart';
import 'package:job_finder_flutter/screens/home/widgets/job_list.dart';
import 'package:job_finder_flutter/screens/home/widgets/search_card.dart';
import 'package:job_finder_flutter/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                const HomeAppBar(),
                const SearchCard(),
                const TagList(),
                JobList(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cases_outlined,
                size: 20,
              ),
              label: 'Case',
            ),
            BottomNavigationBarItem(
              icon: Text(''),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                size: 20,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                size: 20,
              ),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
