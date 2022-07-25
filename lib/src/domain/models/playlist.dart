class Playlist {
  const Playlist({
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;
}

const playlists = <Playlist>[
  Playlist(
    title: 'Party',
    description: 'CJM',
    image: 'https://i.scdn.co/image/ab67706f000000036407731e530bb3874d919396',
  ),
  Playlist(
    title: 'Luis Miguel',
    description: 'CJM',
    image: 'https://thisis-images.scdn.co/37i9dQZF1DZ06evO1mfBM4-large.jpg',
  ),
  Playlist(
    title: 'Top 50 Global',
    description: 'Spotify',
    image:
        'https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_large.jpg',
  ),
  Playlist(
    title: 'Chill Easy',
    description: 'Spotify',
    image: 'https://i.scdn.co/image/ab67706f000000030e8b3c42a8a76cc4444650ab',
  ),
];
