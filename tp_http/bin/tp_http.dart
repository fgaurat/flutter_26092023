import 'package:tp_http/tp_http.dart' as tp_http;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var url = "http://localhost:3000/todos";
  var response = await http.get(Uri.parse(url));
  print(response.body.runtimeType);
  var jsonResponse = convert.jsonDecode(response.body);
  print(jsonResponse.runtimeType);
  for (var todo in jsonResponse) {
    print(todo['title']);
  }
}
