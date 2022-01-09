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
  TextEditingController controller = TextEditingController();
  VideoService videoService = VideoProxyService(YouTubeVideoService());
  List<Widget> videosList = [];
  bool _isSending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Videos'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  label: Text('Busca'),
                  hintText: 'Keyword',
                ),
              ),
              !_isSending
                  ? buildContent()
                  : const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    ),
              ElevatedButton(onPressed: loadVideos, child: const Text('Buscar'))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContent() {
    return Column(
      children: videosList,
    );
  }

  Future<void> loadVideos() async {
    setState(() {
      _isSending = true;
    });

    List<MyYouTubeVideo> videos =
        await videoService.loadVideo(controller.value.text);

    videosList = videos.map((eachVideo) => buildVideoCard(eachVideo)).toList();
    setState(() {
      _isSending = false;
      videosList;
    });
  }

  Widget buildVideoCard(MyYouTubeVideo video) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(width: 100, child: const Text('Title: ')),
              Expanded(child: Text(video.title)),
            ],
          )
        ],
      ),
    );
  }
}
