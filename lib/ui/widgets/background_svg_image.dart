import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/ui/utils/assets_path.dart';

class BackgroundSvgImage extends StatelessWidget {
  const BackgroundSvgImage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsPath.backgroundSvg,
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        child,
      ],
    );
  }
}
