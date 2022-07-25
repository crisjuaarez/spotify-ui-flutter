import 'package:flutter/material.dart';

class Song {
  const Song({
    required this.name,
    required this.artistName,
    required this.duration,
    required this.image,
    this.color = Colors.black87,
  });

  final String name;
  final String artistName;
  final String duration;
  final String image;
  final Color color;
}

const songs = <Song>[
  Song(
    name: 'Me Porto Bonito',
    artistName: 'Bad Bunny, Chencho Corleone',
    duration: '2:58',
    image: 'https://i.scdn.co/image/ab67616d0000b27349d694203245f241a1bcaa72',
    color: Color(0xffD72B3F),
    // image: 'https://i.scdn.co/image/ab67706f000000036a9ad1e05a179f84db1ea649',
    // color: Color(0xff4E9BBA),
  ),
  Song(
    name: 'As It Was',
    artistName: 'Harry Styles',
    duration: '2:17',
    image: 'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
    color: Color(0xffFFCD83),
  ),
];
