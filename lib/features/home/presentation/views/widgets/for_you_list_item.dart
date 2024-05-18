import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class ForYouListItem extends StatelessWidget {
  const ForYouListItem({super.key, required this.imagerUrl});
  final String imagerUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 112/168,
        child: CachedNetworkImage(
          imageUrl: imagerUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: kActiveColor,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: Colors.red,
          ),
        ),
      ),
    );
  }
}
