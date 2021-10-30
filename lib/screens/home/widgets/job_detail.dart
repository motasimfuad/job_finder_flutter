import 'package:flutter/material.dart';
import 'package:job_finder_flutter/constants/colors.dart';
import 'package:job_finder_flutter/models/job.dart';
import 'package:job_finder_flutter/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  const JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 30),
            // logo row
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Name and Logo
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
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    // right icons
                    Row(
                      children: [
                        Icon(
                          job.isMark
                              ? Icons.bookmark
                              : Icons.bookmark_outline_outlined,
                          color: job.isMark ? kPrimary : Colors.black,
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // job name
                Text(
                  job.title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                // address row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        icon: Icons.location_on_outlined, text: job.location),
                    IconText(icon: Icons.access_time_outlined, text: job.time),
                  ],
                ),
                const SizedBox(height: 30),
                // requirements
                const Text(
                  'Requirements',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...job.req
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 300,
                              ),
                              child: Text(
                                e,
                                style: const TextStyle(
                                  wordSpacing: 2.5,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),

                // button
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 25),
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Apply Now'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
