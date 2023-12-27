import 'package:flutter/material.dart';
import 'package:image_serch_app/model/pixabay_image.dart';
import 'package:image_serch_app/repository/pixabay_repository.dart';
import 'package:image_serch_app/widget/pixabay_image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ImageSearchApp(),
    );
  }
}

class ImageSearchApp extends StatefulWidget {
  const ImageSearchApp({super.key});

  @override
  State<ImageSearchApp> createState() => _ImageSearchAppState();
}

class _ImageSearchAppState extends State<ImageSearchApp> {
  final TextEditingController _textEditingController = TextEditingController();
  final PixabayRepository _pixabayRepository = PixabayRepository();
  bool _isLoading = false;
  List<String> _imageUrls = [];

  Future searchImages() async {
    setState(() {
      _imageUrls = [];
      _isLoading = true;
    });
    List<PixabayImage> images = await _pixabayRepository
        .getPixabayImagesByQuery(_textEditingController.text);
    for (PixabayImage image in images) {
      _imageUrls.add(image.previewURL);
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: '검색',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () {
                    searchImages();
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: const BorderSide(
                    color: Color(0xFF4FB6B2), // Custom color
                    width: 2.0, // Border thickness
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF4FB6B2),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF4FB6B2),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          _isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: GridView.builder(
                      itemCount: _imageUrls.length,
                      itemBuilder: (context, index) =>
                          PixabayImageWidget(url: _imageUrls[index]),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 32,
                        mainAxisSpacing: 32,
                      ),
                    ),
                  ),
                ),
        ]),
      ),
    );
  }
}
