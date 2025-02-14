import 'package:azlistview_plus/azlistview_plus.dart';

class AZItem extends ISuspensionBean {
  final String name, capital;
  final String flag;
  final String tag;

  AZItem(
      {required this.name,
      required this.capital,
      required this.flag,
      required this.tag});

  @override
  String getSuspensionTag() => tag;
}
