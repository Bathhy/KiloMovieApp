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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.yellow),
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: moiveList.length,
              itemBuilder: (context, index) {
                return buildCardtwo(movie: moiveList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardtwo({required Movie movie}) => Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    movie.img,
                    fit: BoxFit.fitWidth,
                    height: 180,
                  ),
                ),
              ),
              Text(
                movie.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              RatingBar.builder(
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
                size: 33,
              ),
            ),
          ),
        ],
      );
}
