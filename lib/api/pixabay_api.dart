import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_serch_app/dto/pixabay_image_dto.dart';

class PixabayApi {
  final String _baseUrl =
      "https://pixabay.com/api/?key=41485709-10bae150ab77c646c4aade16f&image_type=photo";

  Future<List<PixabayImageDto>> getImages(String query) async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl&$query'));
      final json = jsonDecode(response.body);
      final images = json['hits'];

      if (images == null) {
        return [];
      }

      return images
          .map((image) {
            return PixabayImageDto.fromJson(image);
          })
          .toList()
          .cast<PixabayImageDto>();
    } catch (error) {
      print(error);
      return [];
    }
  }
}
