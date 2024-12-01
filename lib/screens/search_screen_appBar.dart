import 'package:ace_google_clone/colors.dart';
import 'package:flutter/material.dart';

class SearchScreenAppbar extends StatelessWidget {
  final String label;
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final isActive;
  const SearchScreenAppbar(
      {super.key,
      required this.label,
      required this.icon,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          width: 40,
          height: 4,
          color: isActive ? blueColor : Colors.transparent,
        )
      ],
    );
  }
}
