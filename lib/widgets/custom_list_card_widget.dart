import 'package:flutter/material.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/pages/details_page.dart';
import 'package:movies_2/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;
  const CustomListCardWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsPage(movie: movie),
                fullscreenDialog: true,
              ));
        },
        child: Container(
          height: 210,
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
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
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Text(
                        'Popularidade:' + movie.popularity.toString(),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Votos:' + movie.voteAverage.toString(),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
