class ImageAssets {
  const ImageAssets._();

  //::::::::::::::::::::::::::::::: Image ASSETS :::::::::::::::::::::::::::::::
  static String get imgAppLogo => 'ic_app_logo'.png;
  static String get imgCatalog => 'img_catalog'.png;
  static String get imgCircooles => 'img_circooles'.png;
  static String get imgGoforce => 'img_goforce'.png;
  static String get imgLayer => 'img_layer'.png;
  static String get imgSispyhus => 'img_sispyhus'.png;

  //::::::::::::::::::::::::::::::: ICON ASSETS ::::::::::::::::::::::::::::::::
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
