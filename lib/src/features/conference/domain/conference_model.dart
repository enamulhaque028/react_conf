// To parse this JSON data, do
//
//     final conferenceModel = conferenceModelFromJson(jsonString);

import 'dart:convert';

ConferenceModel conferenceModelFromJson(Map<String, dynamic> data) => ConferenceModel.fromJson(data);

String conferenceModelToJson(ConferenceModel data) => json.encode(data.toJson());

class ConferenceModel {
  final Data data;

  ConferenceModel({
    required this.data,
  });

  factory ConferenceModel.fromJson(Map<String, dynamic> json) => ConferenceModel(
    data: Data.fromJson(json["data"] ?? {}),
  );
  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  final List<Conference> conferences;

  Data({
    required this.conferences,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    conferences: json["conferences"] == null ? [] : List<Conference>.from(json["conferences"].map((x) => Conference.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "conferences": List<dynamic>.from(conferences.map((x) => x.toJson())),
  };
}

class Conference {
  final String id;
  final String name;
  final String slogan;
  final String startDate;
  final List<Organizer> organizers;
  final List<Organizer> speakers;
  final List<Schedule> schedules;
  final List<Sponsor> sponsors;

  Conference({
    required this.id,
    required this.name,
    required this.slogan,
    required this.startDate,
    required this.organizers,
    required this.speakers,
    required this.schedules,
    required this.sponsors,
  });

  factory Conference.fromJson(Map<String, dynamic> json) => Conference(
    id: json["id"] ?? "",
    name: json["name"] ?? "",
    slogan: json["slogan"] ?? "",
    startDate: json["startDate"] == null ? "" : json["startDate"].toString(),
    organizers: json["organizers"] == null ? [] : List<Organizer>.from(json["organizers"].map((x) => Organizer.fromJson(x))),
    speakers: json["speakers"] == null ? [] : List<Organizer>.from(json["speakers"].map((x) => Organizer.fromJson(x))),
    schedules: json["schedules"] == null ? [] : List<Schedule>.from(json["schedules"].map((x) => Schedule.fromJson(x))),
    sponsors: json["sponsors"] == null ? [] : List<Sponsor>.from(json["sponsors"].map((x) => Sponsor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slogan": slogan,
    "startDate": startDate,
    "organizers": List<dynamic>.from(organizers.map((x) => x.toJson())),
    "speakers": List<dynamic>.from(speakers.map((x) => x.toJson())),
    "schedules": List<dynamic>.from(schedules.map((x) => x.toJson())),
    "sponsors": List<dynamic>.from(sponsors.map((x) => x.toJson())),
  };
}

class Organizer {
  final String name;
  final String aboutShort;
  final Image image;

  Organizer({
    required this.name,
    required this.aboutShort,
    required this.image,
  });

  factory Organizer.fromJson(Map<String, dynamic> json) => Organizer(
    name: json["name"] ?? "",
    aboutShort: json["aboutShort"] ?? "",
    image: Image.fromJson(json["image"] ?? {}),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "aboutShort": aboutShort,
    "image": image.toJson(),
  };
}

class Image {
  final String url;

  Image({
    required this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    url: json["url"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class Schedule {
  final String day;
  final String description;
  final List<Interval> intervals;

  Schedule({
    required this.day,
    required this.description,
    required this.intervals,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
    day: json["day"] ?? "",
    description: json["description"] ?? "",
    intervals: json["intervals"] == null ? [] : List<Interval>.from(json["intervals"].map((x) => Interval.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "day": day,
    "description": description,
    "intervals": List<dynamic>.from(intervals.map((x) => x.toJson())),
  };
}

class Interval {
  final String title;
  final String begin;
  final String end;

  Interval({
    required this.title,
    required this.begin,
    required this.end,
  });

  factory Interval.fromJson(Map<String, dynamic> json) => Interval(
    title: json["title"] ?? "Title",
    begin: json["begin"] ?? "",
    end: json["end"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "begin": begin,
    "end": end,
  };
}

class Sponsor {
  final String name;
  final String about;
  final Image image;

  Sponsor({
    required this.name,
    required this.about,
    required this.image,
  });

  factory Sponsor.fromJson(Map<String, dynamic> json) => Sponsor(
    name: json["name"] ?? "",
    about: json["about"] ?? "",
    image: Image.fromJson(json["image"] ?? {}),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "about": about,
    "image": image.toJson(),
  };
}
