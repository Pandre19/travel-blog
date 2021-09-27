import 'package:flutter/material.dart';
import 'package:travelsecond/widgets/most_popular.dart';
import 'package:travelsecond/widgets/travel_blog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Travel Blog",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          flex: 2,
          child: TravelBlog(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "View More",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: MostPopular(),
        ),
      ]),
    );
  }
}
