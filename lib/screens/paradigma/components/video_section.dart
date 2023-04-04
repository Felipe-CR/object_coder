import 'package:ObjectCoder/constants.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List videoList = [
      "Introducción a la teoría",
      "Buenas Prácticas",
      "Malas Prácticas",
      "Creación de la jerarquía",
      "Métodos de uso",
      "Principios de atributos",
      "Optimización de codigo",
      "",
      "",
      "",
    ];

    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? kPrimaryColor
                  : kPrimaryColor.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child:  const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            videoList[index]
          ),
          subtitle: const Text(
            "10 min 30 seg"
          ),
        );
      },
    );
  }
}