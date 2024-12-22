import 'package:simpleloginbegin/constant.dart';

class Movie {
  String img = "";
  String title = "";
  String subtitle = "";
  String genre = "";

  Movie({
    required String img,
    required String title,
    required String genre,
    required String subtitle,
  }) {
    this.img = img;
    this.title = title;
    this.subtitle = subtitle;
    this.genre = genre;
  }
}

List<Movie> movieList = [
  Movie(
    img: Image_Aven,
    title: "Avenger: First Game",
    genre: "Action, Sci-Fi, Family",
    subtitle:
        "Avengers: Endgame is the epic conclusion to the Marvel Cinematic Universe Infinity Saga where the Avengers embark on a high-stakes mission to undo the devastating effects of Thanos snap leading to an intense and emotionally charged battle against the forces of evil.",
  ),
  Movie(
    img: Image_SPW,
    title: "Spirited Away",
    genre: "cartoon, anime, Family",
    subtitle:
        "Spirited Away is a mesmerizing animated masterpiece directed by Hayao Miyazaki following the enchanting journey of a young girl named Chihiro into a mysterious and magical world. Filled with unique characters and fantastical landscapes the film explores courage identity and the power of compassion.",
  ),
  Movie(
    img: image_loki,
    title: "Loki",
    genre: "action, sci-fi, Drama",
    subtitle:
        "Loki the charismatic and mischievous Norse god of trickery and chaos weaves a complex tapestry of mischief and cunning in the realms of Asgard and beyond.",
  ),
  Movie(
    img: Image_inz,
    title: "Inazuma Eleven Go",
    genre: "anime, sport, Teamwork",
    subtitle:
        "Inazuma Eleven Go is an exhilarating anime series that follows the journey of a soccer team as they face formidable rivals and uncover a mysterious plot blending sports and supernatural elements.",
  ),
];
