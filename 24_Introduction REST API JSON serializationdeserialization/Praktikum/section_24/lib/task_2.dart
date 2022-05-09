import 'package:dio/dio.dart';

class ContactModel {
  ContactModel({
    required this.name,
    required this.phone,
  });

  String name;
  String phone;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
      };
}

void main() async {
  var nomor = 97;
  final response = await Dio().put("https://api.jepriana.com/contacts/$nomor",
      data: {"name": "Rae", "phone": "08986865095"});
  print(response);
}
