import 'package:flutter/material.dart';
import 'package:job_finder_flutter/models/job.dart';
import 'package:job_finder_flutter/screens/home/widgets/job_item.dart';

class SearchList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          padding: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          itemBuilder: (context, index) => JobItem(
                jobList[index],
                showTime: true,
              ),
          separatorBuilder: (_, index) => const SizedBox(height: 10),
          itemCount: jobList.length),
    );
  }
}
