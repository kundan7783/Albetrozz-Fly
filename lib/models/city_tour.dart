class CityTour {
  final String image;
  final String city;
  final String tours;
  final String price;

  CityTour({
    required this.image,
    required this.city,
    required this.tours,
    required this.price,
  });
}

final List<CityTour> cityTours = [
  CityTour(
    image: "https://images.unsplash.com/photo-1599661046289-e31897846e41",
    city: "Bangalore",
    tours: "14 Tours • 54 Departures",
    price: "₹81,000",
  ),
  CityTour(
    image: "https://images.unsplash.com/photo-1529253355930-ddbe423a2ac7",
    city: "Mumbai",
    tours: "383 Tours • 1472 Departures",
    price: "₹25,000",
  ),
];