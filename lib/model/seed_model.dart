// ignore_for_file: file_names

class SeedModels {
  // final String SeedId;
  final String Image;
  final String Name;
 // final dynamic createdAt;
 // final dynamic updatedAt;
 // final int price;

  SeedModels({
    // required this.SeedId,
    required this.Image,
    required this.Name,
    // required this.createdAt,
    // required this.updatedAt,
   // required this.price,
  });

  // Serialize the UserModel instance to a JSON map
  Map<String, dynamic> toMap() {
    return {
      // 'SeedId': SeedId,
      'Image': Image,
      'Name': Name,
      // 'createdAt': createdAt,
      // 'updatedAt': updatedAt,
     // 'price':price,
    };
  }

  // Create a UserModel instance from a JSON map
  factory SeedModels.fromMap(Map<String, dynamic> json) {
    return SeedModels(
      // SeedId: json['SeedId'],
      Image: json['Image'],
      Name: json['Name'],
      // createdAt: json['createdAt'],
      // updatedAt: json['updatedAt'], 
    //  price: json['price'],

    );
  }
}
