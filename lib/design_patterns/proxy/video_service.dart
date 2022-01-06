import 'models/my_youtube_video.dart';

abstract class VideoService {
  Future<List<MyYouTubeVideo>> loadVideo(String searchKey);
}
