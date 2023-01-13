import 'package:flutter/material.dart';
import 'package:movie_home_app_ui/constant/colors.dart';
import 'package:movie_home_app_ui/constant/dimens.dart';
import 'package:movie_home_app_ui/utlis/assets_images.dart';
import 'package:movie_home_app_ui/view_items/home_page_view_items.dart';

///Image Link POC
final List<String>movieURL=[
  'https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg',
  'https://pbs.twimg.com/media/DyomVLqX0AA2iOV?format=jpg',
  'https://m.media-amazon.com/images/I/71krfsS5kNL.jpg',
  'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
  'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
  'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
  'https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg'
];
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Image.asset(
          AssetsImages.menuImage,
          color: Colors.white,
        ),
        title: Image.asset(
          AssetsImages.marvelImage,
          width: kMarvelStudioImageWidth,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: kSearchIconSize,
            color: kWhiteColor,
          ),
          SizedBox(
            width: kSP10x,
          ),
        ],
      ),
      body: Stack(
        children: [
          ///Body Image View Section
          const BodyImageItemView(
            imageURL: 'https://pbs.twimg.com/media/FDo0mohVQAAP5Td.jpg',
          ),

          ///Movie Title and Runtime/Vote Section
          const Positioned(
              top: kMovieTitleTopPosition,
              right: kMovieTitleRightPosition,
              child: MovieTitleItemView(
                movieTitle: 'Spider Man- No Way Home (2021)',
                movieRunTime: '2 hours 28 minutes',
                movieVote: '200 votes',
              )),

          ///Bottom Movie Card Section
          Align(
            alignment: Alignment.bottomLeft,
            child: MovieCardItemView(
              movies: movieURL,
            ),
          )
        ],
      ),
    );
  }
}


