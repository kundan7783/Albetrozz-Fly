class TourPackage {
  final String image;
  final String title;
  final String duration;
  final String price;
  final String emi;

  TourPackage({
    required this.image,
    required this.title,
    required this.duration,
    required this.price,
    required this.emi,
  });
}

final List<TourPackage> tourPackages = [
  TourPackage(
    image: "https://images.unsplash.com/photo-1587595431973-160d0d94add1",
    title: "USA East & West Coast",
    duration: "22 Days • 1 Country 18 Cities • 3 Dept.",
    price: "₹8,12,000/pp",
    emi: "₹27,381/mo",
  ),
  TourPackage(
    image: "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
    title: "Europe Grand Tour",
    duration: "15 Days • 5 Countries • 2 Dept.",
    price: "₹4,50,000/pp",
    emi: "₹18,200/mo",
  ),
];