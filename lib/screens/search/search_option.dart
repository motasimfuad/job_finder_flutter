import 'package:flutter/material.dart';
import 'package:job_finder_flutter/constants/colors.dart';

class SearchOption extends StatefulWidget {
  const SearchOption({Key? key}) : super(key: key);

  @override
  _SearchOptionState createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Development': true,
    'Business': false,
    'Data': false,
    'Design': false,
    'Operation': false,
  };

  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return SizedBox(
      height: 25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    var res = optionMap[keys[index]] ?? false;
                    optionMap[keys[index]] = !res;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      color: optionMap[keys[index]] != null &&
                              optionMap[keys[index]] == true
                          ? kPrimary
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: kPrimary.withOpacity(0.5),
                      )),
                  child: Row(
                    children: [
                      Text(
                        keys[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: optionMap[keys[index]] != null &&
                                  optionMap[keys[index]] == true
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                      if (optionMap[keys[index]] != null &&
                          optionMap[keys[index]] == true)
                        Row(
                          children: const [
                            SizedBox(width: 5),
                            Icon(
                              Icons.close,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: optionMap.length),
    );
  }
}
