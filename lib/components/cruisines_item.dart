
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/style/style.dart';

class CruisinesItem extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback press;
  const CruisinesItem({
    Key? key,
    required this.image,
    required this.name,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: greyColor.shade100,
                borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  image,
                  height: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
