import 'package:flutter/material.dart';
import 'package:instagramclone/utilis/userpost.dart';

import '../utilis/boublestories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Ahsan',
    'Daniyal',
    'Ubaid',
    'Qasim',
    'Bilal',
    '👋👋',
    'Asim',
    'Saqib',
    'Ali'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      // body: Center(child: Text('HOME')),
      body: Column(
        children: [
          //stories

          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BoubleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
