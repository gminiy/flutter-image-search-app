class PixabayImageDto {
  int? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  int? previewWidth;
  int? previewHeight;
  String? webformatURL;
  int? webformatWidth;
  int? webformatHeight;
  String? largeImageURL;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  int? userId;
  String? user;
  String? userImageURL;

//<editor-fold desc="Data Methods">
  PixabayImageDto({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PixabayImageDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pageURL == other.pageURL &&
          type == other.type &&
          tags == other.tags &&
          previewURL == other.previewURL &&
          previewWidth == other.previewWidth &&
          previewHeight == other.previewHeight &&
          webformatURL == other.webformatURL &&
          webformatWidth == other.webformatWidth &&
          webformatHeight == other.webformatHeight &&
          largeImageURL == other.largeImageURL &&
          imageWidth == other.imageWidth &&
          imageHeight == other.imageHeight &&
          imageSize == other.imageSize &&
          views == other.views &&
          downloads == other.downloads &&
          collections == other.collections &&
          likes == other.likes &&
          comments == other.comments &&
          userId == other.userId &&
          user == other.user &&
          userImageURL == other.userImageURL);

  @override
  int get hashCode =>
      id.hashCode ^
      pageURL.hashCode ^
      type.hashCode ^
      tags.hashCode ^
      previewURL.hashCode ^
      previewWidth.hashCode ^
      previewHeight.hashCode ^
      webformatURL.hashCode ^
      webformatWidth.hashCode ^
      webformatHeight.hashCode ^
      largeImageURL.hashCode ^
      imageWidth.hashCode ^
      imageHeight.hashCode ^
      imageSize.hashCode ^
      views.hashCode ^
      downloads.hashCode ^
      collections.hashCode ^
      likes.hashCode ^
      comments.hashCode ^
      userId.hashCode ^
      user.hashCode ^
      userImageURL.hashCode;

  @override
  String toString() {
    return 'PixabayImageDto{' +
        ' id: $id,' +
        ' pageURL: $pageURL,' +
        ' type: $type,' +
        ' tags: $tags,' +
        ' previewURL: $previewURL,' +
        ' previewWidth: $previewWidth,' +
        ' previewHeight: $previewHeight,' +
        ' webformatURL: $webformatURL,' +
        ' webformatWidth: $webformatWidth,' +
        ' webformatHeight: $webformatHeight,' +
        ' largeImageURL: $largeImageURL,' +
        ' imageWidth: $imageWidth,' +
        ' imageHeight: $imageHeight,' +
        ' imageSize: $imageSize,' +
        ' views: $views,' +
        ' downloads: $downloads,' +
        ' collections: $collections,' +
        ' likes: $likes,' +
        ' comments: $comments,' +
        ' userId: $userId,' +
        ' user: $user,' +
        ' userImageURL: $userImageURL,' +
        '}';
  }

  PixabayImageDto copyWith({
    int? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    int? previewWidth,
    int? previewHeight,
    String? webformatURL,
    int? webformatWidth,
    int? webformatHeight,
    String? largeImageURL,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    int? userId,
    String? user,
    String? userImageURL,
  }) {
    return PixabayImageDto(
      id: id ?? this.id,
      pageURL: pageURL ?? this.pageURL,
      type: type ?? this.type,
      tags: tags ?? this.tags,
      previewURL: previewURL ?? this.previewURL,
      previewWidth: previewWidth ?? this.previewWidth,
      previewHeight: previewHeight ?? this.previewHeight,
      webformatURL: webformatURL ?? this.webformatURL,
      webformatWidth: webformatWidth ?? this.webformatWidth,
      webformatHeight: webformatHeight ?? this.webformatHeight,
      largeImageURL: largeImageURL ?? this.largeImageURL,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      imageSize: imageSize ?? this.imageSize,
      views: views ?? this.views,
      downloads: downloads ?? this.downloads,
      collections: collections ?? this.collections,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      userId: userId ?? this.userId,
      user: user ?? this.user,
      userImageURL: userImageURL ?? this.userImageURL,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'pageURL': this.pageURL,
      'type': this.type,
      'tags': this.tags,
      'previewURL': this.previewURL,
      'previewWidth': this.previewWidth,
      'previewHeight': this.previewHeight,
      'webformatURL': this.webformatURL,
      'webformatWidth': this.webformatWidth,
      'webformatHeight': this.webformatHeight,
      'largeImageURL': this.largeImageURL,
      'imageWidth': this.imageWidth,
      'imageHeight': this.imageHeight,
      'imageSize': this.imageSize,
      'views': this.views,
      'downloads': this.downloads,
      'collections': this.collections,
      'likes': this.likes,
      'comments': this.comments,
      'userId': this.userId,
      'user': this.user,
      'userImageURL': this.userImageURL,
    };
  }

  factory PixabayImageDto.fromJson(Map<String, dynamic> map) {
    return PixabayImageDto(
      id: map['id'] as int,
      pageURL: map['pageURL'] as String,
      type: map['type'] as String,
      tags: map['tags'] as String,
      previewURL: map['previewURL'] as String,
      previewWidth: map['previewWidth'] as int,
      previewHeight: map['previewHeight'] as int,
      webformatURL: map['webformatURL'] as String,
      webformatWidth: map['webformatWidth'] as int,
      webformatHeight: map['webformatHeight'] as int,
      largeImageURL: map['largeImageURL'] as String,
      imageWidth: map['imageWidth'] as int,
      imageHeight: map['imageHeight'] as int,
      imageSize: map['imageSize'] as int,
      views: map['views'] as int,
      downloads: map['downloads'] as int,
      collections: map['collections'] as int,
      likes: map['likes'] as int,
      comments: map['comments'] as int,
      userId: map['userId'] as int,
      user: map['user'] as String,
      userImageURL: map['userImageURL'] as String,
    );
  }
//</editor-fold>
}
