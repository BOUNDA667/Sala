import 'package:flutter/material.dart';

class AdaptativeCircularProgressBar extends StatelessWidget {
  const AdaptativeCircularProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SizedBox(
      width: 18,
      height: 18,
      child: CircularProgressIndicator.adaptive(
        backgroundColor: cs.onPrimary,
        strokeWidth: 3,
        strokeCap: StrokeCap.butt,
      ),
    );
  }
}
