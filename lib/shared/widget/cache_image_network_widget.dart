import 'package:cached_network_image/cached_network_image.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CacheNetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final Widget? placeholder;
  final BoxFit? fit;
  const CacheNetworkImageWidget({
    super.key,
    this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.fill,
    this.placeholder =
        const Icon(Icons.image, size: 60, fill: 1, color: AppColors.kSecondaryBgColor),
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl.isNotEmptyAndNotNull
        ? CachedNetworkImage(
            key: UniqueKey(),
            fit: fit,
            height: height,
            width: width,
            imageUrl: imageUrl!,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        : const Icon(Icons.error);
  }
}
