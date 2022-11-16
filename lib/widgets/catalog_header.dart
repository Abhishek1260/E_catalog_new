import 'package:flutter/material.dart';
import 'package:flutter_17/Themes/theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key, required this.heading, this.subTitle});

  final String heading;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w600,
            color: MyTheme.darkBluishColor,
          ),
        ),
        subTitle != null
            ? Text(
                subTitle!,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              )
            : const SizedBox(
                height: 0,
              ),
      ],
    );
  }
}
