class Vocabulary {
  const Vocabulary({
    required this.word,
    required this.distance,
    required this.imageAsset,
    required this.audio,
  });

  final String word;
  final String distance;
  final String imageAsset;
  final String audio;

  Map toJson() => {
        'word': word,
        'distance': distance,
        'imageAsset': imageAsset,
        'audio': audio,
      };
}
