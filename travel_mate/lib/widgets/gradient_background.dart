import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final LinearGradient? gradient;

  const GradientBackground({super.key, required this.child, this.gradient});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        gradient:
            gradient ??
            (isDark
                ? AppTheme.backgroundGradientDark
                : AppTheme.backgroundGradient),
      ),
      child: child,
    );
  }
}
