import 'package:simpleloginbegin/constant.dart';

class Movie {
  String img = "";
  String title = "";
  // int rate = 0;

  Movie({required String img, required String title}) {
    this.img = img;
    this.title = title;
    // this.rate = rate;
  }

  set isBookmarked(bool isBookmarked) {}
}

List<Movie> moiveList = [
  Movie(img: Image_Aven, title: "Avenger: First Game"),
  Movie(img: Image_SPW, title: "Spirited Away"),
  Movie(img: Image_mha, title: "My Hero Academia"),
  Movie(img: Image_inz, title: "Inazuma Eleven Go"),
];
