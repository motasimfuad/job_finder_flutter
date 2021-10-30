import 'package:flutter/material.dart';
import 'package:job_finder_flutter/models/job.dart';
import 'package:job_finder_flutter/screens/home/widgets/job_detail.dart';
import 'package:job_finder_flutter/screens/home/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemCount: jobList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 15);
        },
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                context: context,
                builder: (context) => JobDetail(jobList[index]),
              );
            },
            child: JobItem(jobList[index]),
          );
        },
      ),
    );
  }
}
