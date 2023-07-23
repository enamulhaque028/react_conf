class ImageAssets {
  const ImageAssets._();

  static String get icAppLogo => 'ic_app_logo'.png;
  static String get icConference => 'ic_conference'.svg;
  static String get icSponsor => 'ic_sponsor'.svg;
  static String get icMarker => 'ic_marker'.svg;
  static String get icTimeline => 'ic_timeline'.svg;
  static String get icTwitter => 'ic_twitter'.svg;
  static String get icLinkedin => 'ic_linkedin'.svg;
  static String get icDribbble => 'ic_dribbble'.svg;
  static String get icGithub => 'ic_github'.svg;
}

extension on String {
  String get png => 'assets/images/$this.png';
  String get svg => 'assets/images/$this.svg';
}
