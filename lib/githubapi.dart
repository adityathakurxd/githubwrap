import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class GitHubAPI {
  Future<dynamic> getData(String username) async {
    String url = "https://api.github.com/users/$username";
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      return ('Request Failed with status: ${response.statusCode}');
    }
  }
}
