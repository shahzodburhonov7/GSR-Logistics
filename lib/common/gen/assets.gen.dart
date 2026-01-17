/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/GSR.svg
  SvgGenImage get gsr => const SvgGenImage('assets/icons/GSR.svg');

  /// File path: assets/icons/active_analitic.svg
  SvgGenImage get activeAnalitic =>
      const SvgGenImage('assets/icons/active_analitic.svg');

  /// File path: assets/icons/active_balance.svg
  SvgGenImage get activeBalance =>
      const SvgGenImage('assets/icons/active_balance.svg');

  /// File path: assets/icons/active_debt.svg
  SvgGenImage get activeDebt =>
      const SvgGenImage('assets/icons/active_debt.svg');

  /// File path: assets/icons/active_settings.svg
  SvgGenImage get activeSettings =>
      const SvgGenImage('assets/icons/active_settings.svg');

  /// File path: assets/icons/analitic.svg
  SvgGenImage get analitic => const SvgGenImage('assets/icons/analitic.svg');

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/balance.svg
  SvgGenImage get balance => const SvgGenImage('assets/icons/balance.svg');

  /// File path: assets/icons/calendar_icon.svg
  SvgGenImage get calendarIcon =>
      const SvgGenImage('assets/icons/calendar_icon.svg');

  /// File path: assets/icons/check_box.svg
  SvgGenImage get checkBox => const SvgGenImage('assets/icons/check_box.svg');

  /// File path: assets/icons/comment_icon.svg
  SvgGenImage get commentIcon =>
      const SvgGenImage('assets/icons/comment_icon.svg');

  /// File path: assets/icons/debt.svg
  SvgGenImage get debt => const SvgGenImage('assets/icons/debt.svg');

  /// File path: assets/icons/next.svg
  SvgGenImage get next => const SvgGenImage('assets/icons/next.svg');

  /// File path: assets/icons/remove_icon.svg
  SvgGenImage get removeIcon =>
      const SvgGenImage('assets/icons/remove_icon.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/icons/splash.png');

  /// List of all assets
  List<dynamic> get values => [
        gsr,
        activeAnalitic,
        activeBalance,
        activeDebt,
        activeSettings,
        analitic,
        back,
        balance,
        calendarIcon,
        checkBox,
        commentIcon,
        debt,
        next,
        removeIcon,
        settings,
        splash
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/defaultUser.jpg
  AssetGenImage get defaultUser =>
      const AssetGenImage('assets/images/defaultUser.jpg');

  /// File path: assets/images/gsr.jpg
  AssetGenImage get gsr => const AssetGenImage('assets/images/gsr.jpg');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [defaultUser, gsr, splash];
}

class $AssetsLocalesGen {
  const $AssetsLocalesGen();

  /// File path: assets/locales/en-EN.json
  String get enEN => 'assets/locales/en-EN.json';

  /// File path: assets/locales/uz-UZ.json
  String get uzUZ => 'assets/locales/uz-UZ.json';

  /// List of all assets
  List<String> get values => [enEN, uzUZ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLocalesGen locales = $AssetsLocalesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
