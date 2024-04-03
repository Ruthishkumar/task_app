import 'dart:convert';
import 'dart:io';

class SharedDataServices {
  var client = HttpClient();

  Future<String> getData({required String url}) async {
    HttpClientRequest request = await client.getUrl(Uri.parse(url));
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    return stringData;
  }
}
