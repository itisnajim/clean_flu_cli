abstract class Mapper<FROM, TO> {
  const Mapper();
  TO map(FROM from);

  List<TO> mapList(List<FROM> from) => from.map(map).toList();
}

abstract class BiMapper<YIN, YANG> {
  YANG mapYin(YIN from);
  YIN mapYang(YANG from);

  List<YANG> mapYinList(List<YIN> list) => list.map(mapYin).toList();
  List<YIN> mapYangList(List<YANG> list) => list.map(mapYang).toList();
}
