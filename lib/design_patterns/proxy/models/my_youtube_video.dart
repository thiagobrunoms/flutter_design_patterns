import 'package:youtube_api/youtube_api.dart';

class MyYouTubeVideo {
  String? kind;
  String? id;
  String? publishedAt;
  String? channelId;
  String? channelUrl;
  late String title;
  String? description;
  late String channelTitle;
  late String url;
  String? duration;

  MyYouTubeVideo(
      {this.id,
      this.kind,
      this.publishedAt,
      this.channelId,
      this.channelUrl,
      this.description,
      required this.url,
      required this.channelTitle,
      required this.title,
      this.duration});

  factory MyYouTubeVideo.fromYouTubeVideo(YouTubeVideo youTubeVideo) {
    print(youTubeVideo);
    return MyYouTubeVideo(
        id: youTubeVideo.id,
        kind: youTubeVideo.kind,
        publishedAt: youTubeVideo.publishedAt,
        channelId: youTubeVideo.channelId,
        channelUrl: youTubeVideo.channelUrl,
        description: youTubeVideo.description,
        url: youTubeVideo.url,
        channelTitle: youTubeVideo.channelTitle,
        title: youTubeVideo.title,
        duration: youTubeVideo.duration);
  }
}
