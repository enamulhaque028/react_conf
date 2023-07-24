import 'dart:developer';

import 'package:react_conf/src/config/constants/urls.dart';
import 'package:react_conf/src/core/network/http_client.dart';

import '../domain/conference_model.dart';

class ConferenceRepository {
  ConferenceRepository({required this.baseClient});
  final BaseHttpClient baseClient;

  //:::::::::::::::::::::: Fetching Data from GraphQl API ::::::::::::::::::::::
  Future<ConferenceModel> fetchData() async {

    String query = '''
query {
  conferences {
    id
    name
    slogan
    startDate
    organizers {
      name
      aboutShort
      image {
        url
      }
    }
    speakers {
      name
      aboutShort
      image {
        url
      }
    }
    schedules {
      day
      description
      intervals {
        title
        begin
        end
      }
    }
    sponsors {
      name
      about
      image {
        url
      }
    }
  }
}
''';

    var response = await baseClient.client.post(
      ApiCredential.baseUrl,
      data: {'query': query},
    );

    ConferenceModel conferenceData = ConferenceModel(data: Data(conferences: []));

    if (response.statusCode == 200) {
      // log(response.data.toString());
      try {
        // final data = conferenceModelFromJson(json.decode(json.encode(response.data)));
        // final data = json.decode(json.encode(response.data));
        // var data = ConferenceModel.fromJson(response.data);
        ConferenceModel data = conferenceModelFromJson(response.data);
        log(data.data.conferences[0].startDate.toString());
        // log(data.data.conferences.length.toString());
        conferenceData = data;
        return conferenceData;
      } catch (e) {
        log("ERROR: $e");
        return conferenceData;
      }
    } else {
      log(response.statusMessage.toString());
      return conferenceData;
    }
  }
}
