class Space {
  int? id;
  String? name;
  String? imgUrl;
  int? price;
  String? country;
  String? city;
  int? rating;
  String? address;
  String? mapUrl;
  String? photos;
  int? numberOfKitchens;
  int? numberOfBedrooms;
  int? numberOfCupboards;

  Space(
    this.id,
    this.name,
    this.price,
    this.imgUrl,
    this.country,
    this.city,
    this.rating,
    this.address,
    this.mapUrl,
    this.photos,
    this.numberOfKitchens,
    this.numberOfBedrooms,
    this.numberOfCupboards,
  );

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    imgUrl = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
