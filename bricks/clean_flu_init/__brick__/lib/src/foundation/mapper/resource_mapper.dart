import '../../../l10n/res.dart';
import '../../../l10n/res_en.dart';

import 'mapper.dart';

class ResourceMapper extends Mapper<String, Resource> {
  @override
  Resource map(String from) {
    switch (from) {
      /*case 'fr':
        return ResourceFr();

      case 'ar':
        return ResourceAr();*/

      default:
        return ResourceEn();
    }
  }
}
