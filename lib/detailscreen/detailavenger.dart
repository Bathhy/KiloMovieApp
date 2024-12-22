import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simpleloginbegin/App/Login&SignUp/movie.dart';

class Detailavenger extends StatefulWidget {
  const Detailavenger({super.key});

  @override
  State<Detailavenger> createState() => _DetailavengerState();
}

class _DetailavengerState extends State<Detailavenger> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as Map;
    final Movie movie = arg["movie"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text(
        //   movie.title,
        //   style: const TextStyle(color: Colors.white),
        // ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.yellow,
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(movie.img),
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // const SizedBox(height: 6),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  itemSize: 30,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  unratedColor: Colors.grey,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (rating) {
                    // print(rating);
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  movie.genre,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            Column(children: [
              Text(
                movie.subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ]),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 15.0,
                      ),
                      child: const Text(
                        "DOWNLOAD TORRENT",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
