class ContactModel {
  ContactModel({
    this.id,
    required this.name,
    required this.phone,
  });
  int? id;
  String name;
  String phone;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
      };
}
