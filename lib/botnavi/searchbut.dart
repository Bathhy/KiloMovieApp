import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simpleloginbegin/App/Login&SignUp/movie.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingStateState();
}

class _SearchingStateState extends State<Searching> {
  bool isBookMarked = false;
  int isSelected = 0; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search.",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextField(
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(42, 42, 42, 100),
                        disabledBackgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'ALL',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(42, 42, 42, 100),
                        disabledBackgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'ANIMATION (4)',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(42, 42, 42, 100),
                        disabledBackgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'ACTION (4)',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(42, 42, 42, 100),
                        disabledBackgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'COMEDY',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: 40,
              child: const Row(
                children: [
                  Text(
                    "Search Result (4)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return buildCardtwo(movie: movieList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardtwo({required Movie movie}) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detailAven',
              arguments: {"movie": movie});
        },
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      movie.img,
                      fit: BoxFit.fitWidth,
                      height: 180,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      Text(
                        movie.genre,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 5),
                        child: Text(
                          movie.subtitle,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 3,
              right: 200,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isBookMarked = !isBookMarked;
                  });
                },
                icon: Icon(
                  isBookMarked ? Icons.bookmark : Icons.bookmark_outline,
                  color: Colors.yellow,
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      );
}
