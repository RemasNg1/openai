import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiOpenAi {
  final String _baseURL = 'https://api.openai.com/v1/chat/completions';
  final String _apikey = "";
  Future<String?> sendChatOpenAi({required String message}) async {
    var url = Uri.parse(_baseURL);
    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $_apikey",
      },
      body: jsonEncode({
        "model": "gpt-4o",
        "messages": [
          {"role": "user", "content": message},
        ],
      }),
    );

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      var decoded = jsonDecode(response.body);
      return decoded['choices'][0]['message']['content'];
    } else {
      print("OpenAI error: ${response.body}");
      return null;
    }
  }
}
