import 'package:flutter_design_patterns/design_patterns/proxy/models/my_youtube_video.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/video_service.dart';

class VideoProxyService extends VideoService {
  VideoService videoService;
  Map<String, List<MyYouTubeVideo>> cache = {};

  VideoProxyService(this.videoService);

  @override
  Future<List<MyYouTubeVideo>> loadVideo(String searchKey) async {
    print('Buscando video por $searchKey');
    if (cache.containsKey(searchKey)) {
      return Future.value(cache[searchKey]);
    }

    print('Video não encontrado!');
    return videoService.loadVideo(searchKey);
  }
}
