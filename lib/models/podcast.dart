class Podcast {
  final String image;
  final String title;
  final String episodes;
  final String language;

  Podcast({
    required this.image,
    required this.title,
    required this.episodes,
    required this.language,
  });
}
final List<Podcast> podcasts = [
  Podcast(
    image: "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4",
    title: "Around The World",
    episodes: "18 Episodes",
    language: "मराठी",
  ),
  Podcast(
    image: "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4",
    title: "Travel Katta with Sunila Patil",
    episodes: "100 Episodes",
    language: "मराठी",
  ),
];