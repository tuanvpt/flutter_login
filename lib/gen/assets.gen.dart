/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/bag_icon.svg
  String get bagIcon => 'assets/images/bag_icon.svg';

  /// File path: assets/images/brush_icon.svg
  String get brushIcon => 'assets/images/brush_icon.svg';

  /// File path: assets/images/clock.png
  AssetGenImage get clock => const AssetGenImage('assets/images/clock.png');

  /// File path: assets/images/code_icon.svg
  String get codeIcon => 'assets/images/code_icon.svg';

  /// File path: assets/images/dog_reading_vector.svg
  String get dogReadingVector => 'assets/images/dog_reading_vector.svg';

  /// File path: assets/images/filter_icon.svg
  String get filterIcon => 'assets/images/filter_icon.svg';

  /// File path: assets/images/light-1.png
  AssetGenImage get light1 => const AssetGenImage('assets/images/light-1.png');

  /// File path: assets/images/light-2.png
  AssetGenImage get light2 => const AssetGenImage('assets/images/light-2.png');

  /// File path: assets/images/search_icon.svg
  String get searchIcon => 'assets/images/search_icon.svg';

  /// File path: assets/images/user_profile.jpg
  AssetGenImage get userProfile =>
      const AssetGenImage('assets/images/user_profile.jpg');

  /// List of all assets
  List<dynamic> get values => [
        background,
        bagIcon,
        brushIcon,
        clock,
        codeIcon,
        dogReadingVector,
        filterIcon,
        light1,
        light2,
        searchIcon,
        userProfile
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
