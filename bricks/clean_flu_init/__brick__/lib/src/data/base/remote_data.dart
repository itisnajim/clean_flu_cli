abstract class RemoteData {
  const RemoteData();

  factory RemoteData.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  Map<String, dynamic> toJson();
}
