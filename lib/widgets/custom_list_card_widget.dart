import 'package:flutter/material.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;
  const CustomListCardWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(color: Colors.black54),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(API.REQUEST_IMG(movie.posterPath)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  Spacer(),
                  Text(
                    'Popularidade:' + movie.popularity.toString(),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Votos:' + movie.voteAverage.toString(),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
