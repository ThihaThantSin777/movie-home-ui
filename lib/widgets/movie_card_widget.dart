
import 'package:flutter/material.dart';
import 'package:movie_home_app_ui/constant/dimens.dart';
import 'package:movie_home_app_ui/widgets/cache_network_image_widget.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({Key? key,required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kSP10x),
      width: kMovieCardWidth,
      height: kMovieCardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSP10x)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kSP10x),
        child: CacheNetworkImageWidget(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
