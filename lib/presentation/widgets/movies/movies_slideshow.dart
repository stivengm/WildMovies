import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:cinemapedia/domain/entities/movie.dart';

class MoviesSlideShow extends StatelessWidget {
  final List<Movie> movies;
  const MoviesSlideShow({ Key? key, required this.movies }) : super( key: key );

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.85,
        autoplay: true,
        pagination: SwiperPagination(
          margin: const EdgeInsets.only(top: 0),
          builder: DotSwiperPaginationBuilder(
            activeColor: color.primary,
            color: color.secondary
          )
        ),
        itemCount: movies.length,
        itemBuilder: (context, i) => _Slide(movie:  movies[i])
      ),
    );
  }

}


class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({ Key? key, required this.movie }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
              offset: Offset(0, 10)
            )
          ]
        ),
        child: ClipRRect(
          borderRadius:  BorderRadius.circular(20.0),
          child: Image.network(
            movie.backdropPath,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return const DecoratedBox(
                  decoration: BoxDecoration( color: Colors.black12 )
                );
              }
              return FadeIn(child: child);
            },
          ),
        ),
      ),
    );
  }
}