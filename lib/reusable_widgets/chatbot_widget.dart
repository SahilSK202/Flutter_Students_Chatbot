import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class chatbot_widget extends StatefulWidget {
  const chatbot_widget({super.key});

  @override
  State<chatbot_widget> createState() => _chatbot_widgetState();
}

class _chatbot_widgetState extends State<chatbot_widget> {
  var url =
      "https://bots.kore.ai/webclient/b7588b778cea4d7d86f497a537462bb8fd9e5b00d2434abbb5a6e678d01bed99stbc";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(url),
              ),
            ),
          )
        ],
      ),
    );
  }
}
