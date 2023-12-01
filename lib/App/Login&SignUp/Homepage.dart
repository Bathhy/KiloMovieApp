import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simpleloginbegin/App/Login&SignUp/movie.dart';
import 'package:simpleloginbegin/constant.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double rating = 0;
  int _currentIndex = 0;
  bool isBookMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "KiloIT Movies",
            style: TextStyle(color: Colors.yellow),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: moiveList.length,
              itemBuilder: (context, index) =>
                  buildCard(movie: moiveList[index]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Latest.",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              TextButton(
                onPressed: () {
                  print('SEE MORE button pressed');
                },
                child: const Text(
                  "SEE MORE",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          // Add the text button here, outside the ListView
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
        ],
      ),
    );
  }

  Widget buildCard({required Movie movie}) => Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    movie.img,
                    fit: BoxFit.fitWidth,
                    height: 150,
                  ),
                ),
              ),
              Text(
                movie.title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: movie.rate,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                unratedColor: Colors.grey,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          Positioned(
            top: 5,
            right: 5,
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
      );
}
