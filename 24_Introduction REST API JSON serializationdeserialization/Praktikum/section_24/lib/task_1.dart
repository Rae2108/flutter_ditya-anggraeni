import 'package:dio/dio.dart';

void main() {
  print('Task 1');
  var formContact = {"name": "Ditya Anggraeni", "phone": "012938419241"};
  Dio()
      .post(
          "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
          data: formContact)
      .then((value) => print(value));
}
