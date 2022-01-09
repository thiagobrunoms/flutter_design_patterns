import 'package:flutter_design_patterns/design_patterns/proxy/models/my_youtube_video.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/secrets.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/video_service.dart';
import 'package:youtube_api/youtube_api.dart';

class YouTubeVideoService extends VideoService {
  YoutubeAPI ytApi = YoutubeAPI(key);

  @override
  Future<List<MyYouTubeVideo>> loadVideo(String searchKey) async {
    print('Buscando do youtube');

    List<YouTubeVideo> videoResult = await ytApi.search(searchKey);
    videoResult = await ytApi.nextPage();
    print('RESULT from houtube $videoResult');

    return videoResult.map((e) => MyYouTubeVideo.fromYouTubeVideo(e)).toList();
  }
}
