import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter xylophone'),
      ),
      body: const Column(
        children: [
          ColoreBoxButton(
            color: Color(0xffEF443A),
            nota: 'do',
          ),
          ColoreBoxButton(
            color: Color(0xffF99700),
            nota: 'fa',
          ),
          ColoreBoxButton(
            color: Color(0xff4CB050),
            nota: 'lya',
          ),
          ColoreBoxButton(
            color: Color(0xff2E968C),
            nota: 'mi',
          ),
          ColoreBoxButton(
            color: Color(0xff2996F5),
            nota: 're',
          ),
          ColoreBoxButton(
            color: Color(0xffFFE93B),
            nota: 'si',
          ),
          ColoreBoxButton(
            color: Color(0xff9B28B1),
            nota: 'sol',
          ),
        ],
      ),
    );
  }
}

class ColoreBoxButton extends StatelessWidget {
  const ColoreBoxButton({
    required this.color,
    required this.nota,
    super.key,
  });

  final Color color;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('zvuk-notyi-$nota.wav'));
          
        },
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
