class Datamodel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;
  Datamodel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.description,
    required this.stars,
    required this.location,
  });

  factory Datamodel.fromJson(Map<String, dynamic> api) {
    return Datamodel(
        name: api["name"],
        img: api["img"],
        price: api["price"],
        people: api["people"],
        description: api["description"],
        stars: api["stars"],
        location: api["location"]);
  }
}
