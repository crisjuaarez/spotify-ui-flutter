import 'package:flutter/material.dart';

class Artist {
  const Artist({
    required this.name,
    required this.color,
    required this.image,
  });

  final String name;
  final Color color;
  final String image;
}

const artists = <Artist>[
  Artist(
    name: 'Bad\nBunny',
    color: Color(0xff4E9BBA),
    image: 'https://i.scdn.co/image/ab67706f000000036a9ad1e05a179f84db1ea649',
  ),
  Artist(
    name: 'Harry\nStyles',
    color: Color(0xffFFCD83),
    image: 'https://i.scdn.co/image/ab67706c0000bebb6dd921738990202e69c99af6',
  ),
  Artist(
    name: 'Adele',
    color: Color(0xffBF3B87),
    image: 'https://i.scdn.co/image/ab67706f0000000357246dfa8cbe38a322eca769',
  ),
  Artist(
    name: 'Christian\nNodal',
    color: Color(0xffD72B3F),
    image: 'https://i.scdn.co/image/ab67706f000000030215d94208657346b7b4c71a',
  ),
  Artist(
    name: 'Sebastian\nYatra',
    color: Color(0xff4C917E),
    image: 'https://thisis-images.scdn.co/37i9dQZF1DZ06evO00k7iE-large.jpg',
  ),
  Artist(
    name: 'Alejandro\nFernández',
    color: Color(0xffFBBA96),
    image: 'https://thisis-images.scdn.co/37i9dQZF1DZ06evO3Ossb6-large.jpg',
  ),
  Artist(
    name: 'Claptone',
    color: Color(0xffF59E2D),
    image: 'https://thisis-images.scdn.co/37i9dQZF1DZ06evO2ycWiY-large.jpg',
  ),
  Artist(
    name: 'Luis\nMiguel',
    color: Color(0xff5774A4),
    image: 'https://thisis-images.scdn.co/37i9dQZF1DZ06evO1mfBM4-large.jpg',
  ),
  Artist(
    name: 'Sam\nSmith',
    color: Color(0xffB8B3B7),
    image: 'https://i.scdn.co/image/ab67706f000000030cba2da68d7e7c2555eb581d',
  ),
  Artist(
    name: 'Julión\nAlvarez',
    color: Color(0xffC7884E),
    image: 'https://i.scdn.co/image/ab67706f000000030756ee6fbb2b3c2492c45734',
  ),
];
