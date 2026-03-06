class Testimonial {
  final String image;
  final String location;
  final String description;
  final String name;
  final String date;
  final String rating;

  Testimonial({
    required this.image,
    required this.location,
    required this.description,
    required this.name,
    required this.date,
    required this.rating,
  });
}

final List<Testimonial> testimonials = [
  Testimonial(
    image: "https://images.unsplash.com/photo-1529333166437-7750a6dd5a70",
    location: "Munnar Cochin",
    description:
    "Hello Veena World... So this is my first tour with Veena World, and I must say I had an amazing experience.",
    name: "Aniket",
    date: "February, 2026",
    rating: "5.0",
  ),
  Testimonial(
    image: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    location: "Bali Trip",
    description:
    "Amazing journey with perfect arrangements. Everything was smooth and memorable.",
    name: "Rahul",
    date: "January, 2026",
    rating: "4.9",
  ),
];