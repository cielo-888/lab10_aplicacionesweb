import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Movie {
  final String nombre;
  final String genero;
  final String imageUrl; 

  Movie({required this.nombre, required this.genero, required this.imageUrl});
}

class MovieList extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
        nombre: 'Titanic',
        genero: 'Romance/Drama',
        imageUrl: 'https://play-lh.googleusercontent.com/560-H8NVZRHk00g3RltRun4IGB-Ndl0I0iKy33D7EQ0cRRwH78-c46s90lZ1ho_F1so=w240-h480-rw'),
    Movie(
        nombre: 'Star Wars',
        genero: 'Ciencia ficcion',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8yqDk9YvyAoenKR4VSNYxIA04zlkaqFORHS-beT6GA&s'),
    Movie(
        nombre: 'La vida es bella',
        genero: 'Drama/Comedia',
        imageUrl: 'https://m.media-amazon.com/images/I/51XcLlHl-xL._AC_UF894,1000_QL80_.jpg'),
    Movie(
        nombre: 'La Dama y el Vagabundo',
        genero: 'Animacion',
        imageUrl: 'https://play-lh.googleusercontent.com/m2Y0hnxbzXkXxAAN9uZ6TF24m8spVrCQJVJM8gcDeUp0YaIZFYgLK69o2J_epgq2bKxkJw'),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieCard(movie: movies[index]);
      },
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(movie.imageUrl), 
        title: Text(movie.nombre),
        subtitle: Text(movie.genero),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Películas'),
        ),
        body: MovieList(),
      ),
    );
  }
}
