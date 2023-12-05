import 'package:flutter/material.dart';
import 'package:movies_2/controllers/movie_controller.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/repositories/movies_repository_imp.dart';
import 'package:movies_2/service/dio_service_imp.dart';
import 'package:movies_2/widgets/custom_list_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(
      DioServiceImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Movies',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ValueListenableBuilder<Movies?>(
                valueListenable: _controller.movies,
                builder: (_, movies, __) {
                  return movies != null
                      ? ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: movies.listMovies.length,
                          itemBuilder: (_, idx) => CustomListCardWidget(
                              movie: movies.listMovies[idx]),
                          separatorBuilder: (_, __) => Divider(),
                        )
                      : Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}