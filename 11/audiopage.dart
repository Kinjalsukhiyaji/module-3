import 'package:flutter/material.dart';
import 'package:module3/11/model/audio.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final List<Audio> audioList = [];
  void initState (){
    audioList.add(Audio(title: 'Malang Sajna', artist: 'Parampara Thakur, Sachet Tandon', album: 'Malang Sajna',coverimage: 'https://www.bollywoodhungama.com/wp-content/uploads/2023/03/Romantic_Songs.jpeg'),);
    audioList.add(Audio(title: 'Malang Sajna', artist: 'Parampara Thakur, Sachet Tandon', album: 'Malang Sajna',coverimage: 'https://www.bollywoodhungama.com/wp-content/uploads/2023/03/Romantic_Songs.jpeg'),);
    audioList.add(Audio(title: 'Malang Sajna', artist: 'Parampara Thakur, Sachet Tandon', album: 'Malang Sajna',coverimage: 'https://www.bollywoodhungama.com/wp-content/uploads/2023/03/Romantic_Songs.jpeg'),);
    audioList.add(Audio(title: 'Malang Sajna', artist: 'Parampara Thakur, Sachet Tandon', album: 'Malang Sajna',coverimage: 'https://www.bollywoodhungama.com/wp-content/uploads/2023/03/Romantic_Songs.jpeg'),);
    audioList.add(Audio(title: 'Malang Sajna', artist: 'Parampara Thakur, Sachet Tandon', album: 'Malang Sajna',coverimage: 'https://www.bollywoodhungama.com/wp-content/uploads/2023/03/Romantic_Songs.jpeg'),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Page'),
      ),
      body: ListView.builder(
        itemCount: audioList.length,
          itemBuilder: (BuildContext context,int index) {
          return ListTile(
            leading: Image.network(audioList[index].coverimage),
            title: Text(audioList[index].title),
            subtitle: Text('${audioList[index].artist}\n${audioList[index].album}'),
            trailing: Icon(Icons.play_arrow),
          );
          },
      ),
    );
  }
}