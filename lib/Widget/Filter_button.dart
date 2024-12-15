import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  const FilterButton(
      {super.key, required this.title, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 7, 254, 44)
                  : const Color.fromARGB(255, 82, 84, 82)),
        ),
      ),
    );
  }
}
