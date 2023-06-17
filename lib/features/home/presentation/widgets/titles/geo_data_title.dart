import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/asset_paths.dart';
import '../../../../../core/constants/app_text_styles.dart';

class GeoDataTitle extends StatelessWidget {
  final String cityName;
  final String date;

  const GeoDataTitle({super.key, required this.cityName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetPaths.location),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cityName,
              style: AppTextStyles.bodyBig.copyWith(
                color: AppColors.black,
              ),
            ),
            Text(
              date,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
