class ImageAssets {
  const ImageAssets._();

  static String get icAppLogo => 'ic_app_logo'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
}
