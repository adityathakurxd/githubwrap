import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void getData(String username) async {
  String url = "https://api.github.com/users/" + username;
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var fullName = jsonResponse['name'];
    print('Your name is: $fullName ');
  } else {
    print('Request Failed with status: ${response.statusCode}');
  }
}
