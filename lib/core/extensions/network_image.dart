import 'package:flutter/material.dart';

import 'image_path.dart';
import 'material_color.dart';

class NetworkImageExtemsion {
  static image(String? path, {required bool isProfile}) {
    return Image.network(
      "$path",
      errorBuilder: (context, error, stackTrace) => Container(
        color: MColors.primaryColorsGrey.shade700,
        child: isProfile
            ? Icon(
                Icons.person,
                color: MColors.white,
              )
            : Image.asset(ImagePath.noImage),
      ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress != null) {
          return Container(
            height: 150,
            decoration: BoxDecoration(
                color: MColors.primaryColorsGrey.shade800,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          );
        } else {
          return child;
        }
      },
    );
  }
}
