class PixabayImage {
  String previewURL;

//<editor-fold desc="Data Methods">
  PixabayImage({
    required this.previewURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PixabayImage &&
          runtimeType == other.runtimeType &&
          previewURL == other.previewURL);

  @override
  int get hashCode => previewURL.hashCode;

  @override
  String toString() {
    return 'PixabayImage{' + ' previewURL: $previewURL,' + '}';
  }

  PixabayImage copyWith({
    String? previewURL,
  }) {
    return PixabayImage(
      previewURL: previewURL ?? this.previewURL,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'previewURL': this.previewURL,
    };
  }

  factory PixabayImage.fromJson(Map<String, dynamic> map) {
    return PixabayImage(
      previewURL: map['previewURL'] as String,
    );
  }

//</editor-fold>
}