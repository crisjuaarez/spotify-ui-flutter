class Song {
  const Song({
    required this.name,
    required this.artistName,
    required this.duration,
    required this.image,
  });

  final String name;
  final String artistName;
  final String duration;
  final String image;
}

const songs = <Song>[
  Song(
    name: 'As It Was',
    artistName: 'Harry Styles',
    duration: '2:17',
    image: 'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
  ),
];
