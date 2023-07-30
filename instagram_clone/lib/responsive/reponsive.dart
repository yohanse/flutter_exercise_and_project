import 'package:flutter/material.dart';
import 'package:second/utilities/dimension.dart';

class Responseive extends StatelessWidget {
  final Widget webScreenLayout, mobileScreenLayout;
  const Responseive({
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > webScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
