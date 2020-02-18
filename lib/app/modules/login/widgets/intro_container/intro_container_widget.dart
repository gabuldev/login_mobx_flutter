import 'package:flutter/material.dart';
import 'package:mobx_login/app/shared/widgets/clippers/clipper_curve_container.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class IntroContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
          clipper: ClipperCurveContainer(),
          child: Container(color: AppColors.blue,
      
          ),
    );
  }
}
