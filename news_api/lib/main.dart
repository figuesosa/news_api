import 'package:flutter/material.dart';
import 'package:news_api/Widget/news_list_view.dart';
import 'Widget/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final newsApi = NewsApi('f27724378cca430cb143ee977c587841');

  MyApp({super.key}); // Reemplaza con tu clave API

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Noticias'),
        ),
        body: NewsListView(api: newsApi),
      ),
    );
  }
}
