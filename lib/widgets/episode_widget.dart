import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webtoon/models/webtoon_episode_model.dart';

class Episoed extends StatelessWidget {
  const Episoed({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final String webtoonId;
  final WebToonEpisodeModel episode;

  onButtonTap() async {
    final String url =
        'https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}';
    await launchUrlString(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onButtonTap(),
      child: ListTile(
        title: Text(episode.title),
        subtitle: Text(episode.date),
        trailing: Text(episode.rating),
      ),
    );
  }
}
