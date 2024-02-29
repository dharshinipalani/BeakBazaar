
import 'package:flutter/material.dart';

class ForgotPassButtonWidget extends StatelessWidget {
  const ForgotPassButtonWidget({
    super.key,
    required this.iconData,
    required this.subtitle,
    required this.title,
    required this.onTap
  });

  final IconData iconData;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 50,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}