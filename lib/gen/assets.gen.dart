/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/dashboard-2.svg
  SvgGenImage get dashboard2 =>
      const SvgGenImage('assets/icons/dashboard-2.svg');

  /// File path: assets/icons/dashboard.svg
  SvgGenImage get dashboard => const SvgGenImage('assets/icons/dashboard.svg');

  /// File path: assets/icons/filter-square.svg
  SvgGenImage get filterSquare =>
      const SvgGenImage('assets/icons/filter-square.svg');

  /// File path: assets/icons/message-dots-round-fill.svg
  SvgGenImage get messageDotsRoundFill =>
      const SvgGenImage('assets/icons/message-dots-round-fill.svg');

  /// File path: assets/icons/message-dots-round.svg
  SvgGenImage get messageDotsRound =>
      const SvgGenImage('assets/icons/message-dots-round.svg');

  /// File path: assets/icons/package-box.svg
  SvgGenImage get packageBox =>
      const SvgGenImage('assets/icons/package-box.svg');

  /// File path: assets/icons/plus-square.svg
  SvgGenImage get plusSquare =>
      const SvgGenImage('assets/icons/plus-square.svg');

  /// File path: assets/icons/separator.svg
  SvgGenImage get separator => const SvgGenImage('assets/icons/separator.svg');

  /// File path: assets/icons/stack.svg
  SvgGenImage get stack => const SvgGenImage('assets/icons/stack.svg');

  /// File path: assets/icons/star-fill.svg
  SvgGenImage get starFill => const SvgGenImage('assets/icons/star-fill.svg');

  /// File path: assets/icons/three-d-box-square-fill.svg
  SvgGenImage get threeDBoxSquareFill =>
      const SvgGenImage('assets/icons/three-d-box-square-fill.svg');

  /// File path: assets/icons/three-d-box-square.svg
  SvgGenImage get threeDBoxSquare =>
      const SvgGenImage('assets/icons/three-d-box-square.svg');

  /// File path: assets/icons/user-square-fill.svg
  SvgGenImage get userSquareFill =>
      const SvgGenImage('assets/icons/user-square-fill.svg');

  /// File path: assets/icons/user-square.svg
  SvgGenImage get userSquare =>
      const SvgGenImage('assets/icons/user-square.svg');

  /// File path: assets/icons/wave.svg
  SvgGenImage get wave => const SvgGenImage('assets/icons/wave.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        dashboard2,
        dashboard,
        filterSquare,
        messageDotsRoundFill,
        messageDotsRound,
        packageBox,
        plusSquare,
        separator,
        stack,
        starFill,
        threeDBoxSquareFill,
        threeDBoxSquare,
        userSquareFill,
        userSquare,
        wave
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/hellomate.svg
  SvgGenImage get hellomate => const SvgGenImage('assets/images/hellomate.svg');

  /// File path: assets/images/login-bg.jpg
  AssetGenImage get loginBg =>
      const AssetGenImage('assets/images/login-bg.jpg');

  /// List of all assets
  List<dynamic> get values => [hellomate, loginBg];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
