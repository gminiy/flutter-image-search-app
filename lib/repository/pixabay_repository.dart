import 'package:image_serch_app/api/pixabay_api.dart';
import 'package:image_serch_app/dto/pixabay_image_dto.dart';
import 'package:image_serch_app/model/pixabay_image.dart';
import 'package:image_serch_app/mapper/pixabay_image_mapper.dart';

class PixabayRepository {
  final _api = PixabayApi();

  Future<List<PixabayImage>> getPixabayImagesByQuery(String query) async {
    List<PixabayImageDto> dtos = await _api.getImages(query);

    return dtos.map((dto) => dto.toPixabayImage()).toList();
  }
}
