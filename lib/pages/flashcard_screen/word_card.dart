import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/models/profile.dart';
import 'package:demo/widgets/action_button_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WordCard extends StatelessWidget {
  WordCard({Key? key, required this.vocabulary}) : super(key: key);
  final Vocabulary vocabulary;
  final FlutterTts flutterTts = FlutterTts();

  Future _speak(String word) async {
    await flutterTts.setLanguage("en-AU");
    await flutterTts.setPitch(1);
    await flutterTts.setVoice({"name": "Karen", "locale": "en-AU"});
    await flutterTts.speak(word);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      width: 340,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FlipCard(
        fill: Fill.fillBack,
        // Fill the back side of the card to make in the same size as the front.
        direction: FlipDirection.HORIZONTAL,
        // default
        front: Card(
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  /*child: Image.asset(
                    profile.imageAsset,
                    fit: BoxFit.fitHeight,
                  ),*/
                  child: CachedNetworkImage(
                    imageUrl: vocabulary.imageAsset,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 80,
                  width: 340,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          vocabulary.word,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w800,
                            fontSize: 21,
                          ),
                        ),
                        Text(
                          vocabulary.distance,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 5,
                child: ActionButtonWidget(
                  onPressed: () => _speak(vocabulary.word),
                  icon: const Icon(
                    Icons.volume_up_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        back: Card(
          child: Center(
            child: Text(vocabulary.word),
          ),
        ),
      ),
    );
  }
}
