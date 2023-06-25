import 'package:flutter/material.dart';

class TVShows extends StatefulWidget {
  const TVShows({super.key});

  @override
  State<TVShows> createState() => _TVShowsState();
}

class _TVShowsState extends State<TVShows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("TV Shows")),
    );
  }
}
