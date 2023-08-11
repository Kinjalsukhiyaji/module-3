import 'package:flutter/material.dart';

import 'model/video.dart';
class VideoPage extends StatelessWidget {

  @override
  final List<Video> videos = [
    Video(
      title: 'Video 1',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Video 2',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Video 3',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Video 4',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Video 5',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Video 6',
      thumbnailUrl: 'https://dummyimage.com/300x200/000000/fff.png',
      videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Page'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return GestureDetector(
            onTap: () {
              // Handle video tap, e.g., navigate to video player page
              // You can use a plugin like 'video_player' to play videos
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(video.thumbnailUrl),
                  SizedBox(height: 10.0),
                  Text(video.title),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

