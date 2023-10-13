/*
import 'package:chopper/chopper.dart';

part 'remote_authentication_service.chopper.dart';

// This is just an example, You can remove this file.
@ChopperApi(baseUrl: '/auth')
abstract class RemoteAuthenticationService extends ChopperService {
  static RemoteAuthenticationService create([ChopperClient? client]) =>
      _$RemoteAuthenticationService(client);

  @Post(path: '/signup')
  Future<Response<RemoteSession>> signUp({
    @Field() required String email,
    @Field() required String password,
    // Data for any additional info should be passed to the server.
    @Field() String? data,
  });

  @Post(path: '/login')
  Future<Response<RemoteSession>> logIn({
    @Field() required String email,
    @Field() required String password,
  });
}
*/
