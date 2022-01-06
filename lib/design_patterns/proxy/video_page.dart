import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/models/my_youtube_video.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/video_proxy_service.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/video_service.dart';
import 'package:flutter_design_patterns/design_patterns/proxy/youtube_video_service.dart';

class VideoServicePage extends StatefulWidget {
  const VideoServicePage({Key? key}) : super(key: key);

  @override
  _VideoServicePageState createState() => _VideoServicePageState();
}

class _VideoServicePageState extends State<VideoServicePage> {
  VideoService videoService = VideoProxyService(YouTubeVideoService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: FutureBuilder<List<MyYouTubeVideo>>(
        future: videoService.loadVideo("Flutter"),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          List<MyYouTubeVideo> videos = snapshot.data!;

          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Title'),
                      Text(videos[index].title),
                    ],
                  )
                ],
              ),
            );
          });
        },
      ),
    );
  }
}
