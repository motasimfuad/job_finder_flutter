import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_flutter/constants/colors.dart';
import 'package:job_finder_flutter/models/job.dart';
import 'package:job_finder_flutter/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  const JobItem(this.job, {this.showTime = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(job.longUrl),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    job.company,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Icon(
                job.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                color: job.isMark ? kPrimary : Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            job.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(icon: Icons.location_on_outlined, text: job.location),
              if (showTime)
                IconText(icon: Icons.access_time_outlined, text: job.time),
            ],
          )
        ],
      ),
    );
  }
}
