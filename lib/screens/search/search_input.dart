import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/icons/search.png',
                    width: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/icons/filter.png',
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
