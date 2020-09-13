import 'dart:convert';

import 'package:http/http.dart'as http;
class NetworkHandler {

  Future<dynamic> requestToServer(String url) async {
    http.Response response;
    try {
      response = await http.get(url);

      if (response.statusCode == 200) {
        print(url);
        print(response.body);
        print (jsonDecode(response.body));
        return jsonDecode(response.body);


      }
      else {
        return null;
      }

    }
    catch (e) {
      print(e.toString());
    }
  }
}
