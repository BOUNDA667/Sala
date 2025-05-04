import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButtons extends StatelessWidget {
  final VoidCallback onAppleTap;
  final VoidCallback onFacebookTap;
  final VoidCallback onGoogleTap;
  final double size;
  final double iconSize;
  final double spacing;

  const SocialLoginButtons({
    super.key,
    required this.onAppleTap,
    required this.onFacebookTap,
    required this.onGoogleTap,
    this.size = 56,
    this.iconSize = 24,
    this.spacing = 16,
  });

  Widget _buildButton(
      BuildContext context, String assetName, VoidCallback onTap) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: cs.surface,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: cs.onSurface.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/$assetName',
            width: iconSize,
            height: iconSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(context, 'svg/apple_svg.svg', onAppleTap),
        SizedBox(width: spacing),
        _buildButton(context, 'svg/facebook_svg.svg', onFacebookTap),
        SizedBox(width: spacing),
        _buildButton(context, 'svg/google_svg.svg', onGoogleTap),
      ],
    );
  }
}
