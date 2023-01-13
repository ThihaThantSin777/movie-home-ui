import 'package:flutter/material.dart';
import 'package:movie_home_app_ui/constant/colors.dart';
import 'package:movie_home_app_ui/constant/dimens.dart';
import 'package:movie_home_app_ui/widgets/cache_network_image_widget.dart';
import 'package:movie_home_app_ui/widgets/easy_text_widget.dart';

import '../widgets/movie_card_widget.dart';

class MovieCardItemView extends StatelessWidget {
  const MovieCardItemView({Key? key, required this.movies}) : super(key: key);
  final List<String> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kSP10x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const EasyTextWidget(
            text: 'Marvel Cinematic Universe',
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: kWhiteColor,
          ),
          const SizedBox(
            height: kSP10x,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: movies
                    .map((url) => MovieCardWidget(imageUrl: url))
                    .toList()),
          )
        ],
      ),
    );
  }
}

class MovieTitleItemView extends StatelessWidget {
  const MovieTitleItemView({
    Key? key,
    required this.movieTitle,
    required this.movieRunTime,
    required this.movieVote,
  }) : super(key: key);
  final String movieTitle;
  final String movieRunTime;
  final String movieVote;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kMovieTitleWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          EasyTextWidget(
            text: movieTitle,
            fontSize: kFontSize35x,
            color: kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: kSP10x,
          ),
          RunTimeAndVoteView(
            runTime: movieRunTime,
            vote: movieVote,
          ),
          const SizedBox(
            height: kSP10x,
          ),
          const Icon(
            Icons.play_circle,
            size: kPlayButtonIconSize,
            color: kWhiteColor,
          )
        ],
      ),
    );
  }
}

class RunTimeAndVoteView extends StatelessWidget {
  const RunTimeAndVoteView(
      {Key? key, required this.runTime, required this.vote})
      : super(key: key);
  final String runTime;
  final String vote;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EasyTextWidget(
          text: runTime,
          fontWeight: FontWeight.w600,
        ),
        EasyTextWidget(text: vote, fontWeight: FontWeight.w600)
      ],
    );
  }
}

class BodyImageItemView extends StatelessWidget {
  const BodyImageItemView({Key? key, required this.imageURL}) : super(key: key);
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: CacheNetworkImageWidget(
      imageUrl: imageURL,
      fit: BoxFit.cover,
    ));
  }
}
