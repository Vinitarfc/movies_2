import 'package:flutter/material.dart';
import 'package:movies_2/core/inject/inject.dart';

import '/features/movie/presentation/ui/pages/home_page.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies DB',
      theme: ThemeData.light(), //.dart ficava ruim de ver as altera��es
      home: const HomePage(),
    );
  }
}
