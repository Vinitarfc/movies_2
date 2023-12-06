import 'package:flutter/material.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;
  const DetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: movie.id,
                child: Image.network(
                  API.REQUEST_IMG(movie.posterPath),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return CircularProgressIndicator.adaptive();
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(movie.overview,
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.title),
                Text(movie.originalTitle),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.new_releases),
                Text(movie.releaseDate),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
