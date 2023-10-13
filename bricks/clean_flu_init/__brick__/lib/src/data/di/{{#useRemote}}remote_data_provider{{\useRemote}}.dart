import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/http_client/app_http_client.dart';
import '../base/http_client/app_http_client_impl.dart';

final remoteDataProvider = Provider<AppHttpClient>(
  (ref) => AppHttpClientImpl(),
);
