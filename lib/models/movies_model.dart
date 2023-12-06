// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movies {
  Movies({
    required this.averageRating,
    required this.backdropPath,
    required this.listMovies,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.itemCount,
    required this.name,
    required this.objectIds,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });
  late final double averageRating;
  late final String backdropPath;
  late final List<Movie> listMovies;
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final int itemCount;
  late final String name;
  late final ObjectIds objectIds;
  late final int page;
  late final String posterPath;
  late final bool public;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  Movies.fromJson(Map<String, dynamic> json) {
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    itemCount = json['item_count'];
    name = json['name'];
    objectIds = ObjectIds.fromJson(json['object_ids']);
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['average_rating'] = averageRating;
    _data['backdrop_path'] = backdropPath;
    _data['results'] = listMovies.map((e) => e.toJson()).toList();
    _data['description'] = description;
    _data['id'] = id;
    _data['iso_3166_1'] = iso_3166_1;
    _data['iso_639_1'] = iso_639_1;
    _data['item_count'] = itemCount;
    _data['name'] = name;
    _data['object_ids'] = objectIds.toJson();
    _data['page'] = page;
    _data['poster_path'] = posterPath;
    _data['public'] = public;
    _data['revenue'] = revenue;
    _data['runtime'] = runtime;
    _data['sort_by'] = sortBy;
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }

  @override
  String toString() {
    return 'Movies(averageRating: $averageRating, backdropPath: $backdropPath, listMovies: $listMovies, description: $description, id: $id, iso_3166_1: $iso_3166_1, iso_639_1: $iso_639_1, itemCount: $itemCount, name: $name, objectIds: $objectIds, page: $page, posterPath: $posterPath, public: $public, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(covariant Movies other) {
    if (identical(this, other)) return true;

    return other.averageRating == averageRating &&
        other.backdropPath == backdropPath &&
        other.listMovies == listMovies &&
        other.description == description &&
        other.id == id &&
        other.iso_3166_1 == iso_3166_1 &&
        other.iso_639_1 == iso_639_1 &&
        other.itemCount == itemCount &&
        other.name == name &&
        other.objectIds == objectIds &&
        other.page == page &&
        other.posterPath == posterPath &&
        other.public == public &&
        other.revenue == revenue &&
        other.runtime == runtime &&
        other.sortBy == sortBy &&
        other.totalPages == totalPages &&
        other.totalResults == totalResults;
  }

  @override
  int get hashCode {
    return averageRating.hashCode ^
        backdropPath.hashCode ^
        listMovies.hashCode ^
        description.hashCode ^
        id.hashCode ^
        iso_3166_1.hashCode ^
        iso_639_1.hashCode ^
        itemCount.hashCode ^
        name.hashCode ^
        objectIds.hashCode ^
        page.hashCode ^
        posterPath.hashCode ^
        public.hashCode ^
        revenue.hashCode ^
        runtime.hashCode ^
        sortBy.hashCode ^
        totalPages.hashCode ^
        totalResults.hashCode;
  }

  Movies copyWith({
    double? averageRating,
    String? backdropPath,
    List<Movie>? listMovies,
    String? description,
    int? id,
    String? iso_3166_1,
    String? iso_639_1,
    int? itemCount,
    String? name,
    ObjectIds? objectIds,
    int? page,
    String? posterPath,
    bool? public,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalResults,
  }) {
    return Movies(
      averageRating: averageRating ?? this.averageRating,
      backdropPath: backdropPath ?? this.backdropPath,
      listMovies: listMovies ?? this.listMovies,
      description: description ?? this.description,
      id: id ?? this.id,
      iso_3166_1: iso_3166_1 ?? this.iso_3166_1,
      iso_639_1: iso_639_1 ?? this.iso_639_1,
      itemCount: itemCount ?? this.itemCount,
      name: name ?? this.name,
      objectIds: objectIds ?? this.objectIds,
      page: page ?? this.page,
      posterPath: posterPath ?? this.posterPath,
      public: public ?? this.public,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      sortBy: sortBy ?? this.sortBy,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }
}

class Movie {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final int id;
  late final String title;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final String posterPath;
  late final String mediaType;
  late final List<int> genreIds;
  late final double popularity;
  late final String releaseDate;
  late final bool video;
  late final double? voteAverage;
  late final int voteCount;

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    id = json['id'];
    title = json['title'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['id'] = id;
    _data['title'] = title;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['poster_path'] = posterPath;
    _data['media_type'] = mediaType;
    _data['genre_ids'] = genreIds;
    _data['popularity'] = popularity;
    _data['release_date'] = releaseDate;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.id == id &&
        other.title == title &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.posterPath == posterPath &&
        other.mediaType == mediaType &&
        other.genreIds == genreIds &&
        other.popularity == popularity &&
        other.releaseDate == releaseDate &&
        other.video == video &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdropPath.hashCode ^
        id.hashCode ^
        title.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        posterPath.hashCode ^
        mediaType.hashCode ^
        genreIds.hashCode ^
        popularity.hashCode ^
        releaseDate.hashCode ^
        video.hashCode ^
        voteAverage.hashCode ^
        voteCount.hashCode;
  }

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    int? id,
    String? title,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    List<int>? genreIds,
    double? popularity,
    String? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      title: title ?? this.title,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      mediaType: mediaType ?? this.mediaType,
      genreIds: genreIds ?? this.genreIds,
      popularity: popularity ?? this.popularity,
      releaseDate: releaseDate ?? this.releaseDate,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}

class ObjectIds {
  ObjectIds();

  ObjectIds.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
