import 'dart:convert';

import 'package:http/http.dart' as http;

class CurrenciAPIHelper {
  CurrenciAPIHelper._();

  static final CurrenciAPIHelper currenciAPIHelper = CurrenciAPIHelper._();

  Future<List?> fectdat({required String API}) async {
    http.Response res = await http.get(Uri.parse(API));

    if (res.statusCode == 200) {
      Map<String, dynamic> jsondata = jsonDecode(res.body);

      List json_list = jsondata['results'].entries.map((e) => e).toList();
      return json_list;
    }
    return null;
  }

  Future<num?> fectdata(
      {required num parm, required String from, required String to}) async {
    Uri uri = Uri.parse(
      "https://api.exchangerate.host/convert?from=$from&to=$to&amount=$parm",
    );
    http.Response res = await http.get(
      uri,
    );

    print("res = $res");

    if (res.statusCode == 200) {
      Map decodedata = jsonDecode(res.body);
      return decodedata['result'];
    }
    return null;
  }
}
