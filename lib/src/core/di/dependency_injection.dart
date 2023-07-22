import 'package:get_it/get_it.dart';
import 'package:react_conf/src/core/network/http_client.dart';

GetIt sl = GetIt.instance;

void setup() {
  sl.registerSingleton(BaseHttpClient());
}