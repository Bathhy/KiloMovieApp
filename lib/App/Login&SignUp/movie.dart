import 'package:simpleloginbegin/constant.dart';

class Movie {
  String img = "";
  String title = "";
  int rate = 0;

  Movie({required String img, required String title, required int rate}) {
    this.img = img;
    this.title = title;
    this.rate = rate;
  }
}

List<Movie> moiveList = [
  Movie(img: Image_Aven, title: "Avenger: First Game", rate: 4),
  Movie(img: Image_SPW, title: "Spirited Away", rate: 2),
  Movie(img: Image_mha, title: "My Hero Academia: Season 8", rate: 2),
  Movie(img: Image_inz, title: "Inazuma Eleven Go", rate: 3),
];
