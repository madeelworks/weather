import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Networking(this.url);
  final String? url;

  Future gerData() async {
    final uri = Uri.parse(url!);
    http.Response resonse = await http.get(uri);
    if (resonse.statusCode == 200) {
      // Process the data here
      String data = resonse.body;
      var decode = jsonDecode(data);
      return decode;
    } else {
      print(resonse.statusCode);
    }
  }
}
