import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> getData(String username) async {
  String url = "https://api.github.com/users/" + username;
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var fullName = jsonResponse['name'];
    return fullName;
  } else {
    return ('Request Failed with status: ${response.statusCode}');
  }
}
