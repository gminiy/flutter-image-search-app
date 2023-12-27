import 'package:image_serch_app/dto/pixabay_image_dto.dart';
import 'package:image_serch_app/model/pixabay_image.dart';

extension ToPixabayImage on PixabayImageDto {
  PixabayImage toPixabayImage() {
    return PixabayImage(previewURL: previewURL ??
        "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg");
  }
}