import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:get/get.dart';

class CountryInfo extends ISuspensionBean {
  String? name;
  String? capital;
  String? motto;
  String? region;
  int? population;
  String? flag;
  String? coatOfArm;
  String? language;
  String? ethnicity;
  String? religion;
  String? government;
  String? independence;
  String? area;
  String? currency;
  String? gdp;
  String? timezone;
  String? dateFormat;
  String? dialCode;
  String? driveSide;

  CountryInfo({
    this.name,
     this.capital,
    this.motto,
    this.region,
    this.population,
    this.flag,
    this.coatOfArm,
    this.language,
    this.ethnicity,
    this.religion,
    this.government,
    this.independence,
    this.area,
    this.currency,
    this.gdp,
    this.timezone,
    this.dateFormat,
    this.dialCode,
    this.driveSide,
  });

  CountryInfo.fromJson(Map json) {
    try {
      name = json['name']['common'];
      capital = json['capital']?[0] ?? "";
      motto = json['motto'];
      region = json['region'];
      population = json['population'];
      flag = json['flags']['png'];
      coatOfArm = json['coatOfArms']['png'] ?? '';
      language = json['languages']?.values.first ?? '';

      ethnicity = json['ethnicity'] ?? '';
      religion = json['religions']?.first ?? '';
      government = json['government'] ?? '';
      independence = json['independence'] ?? '';
      area = json['area'].toString();
      currency = json['currencies'].keys.first;
      gdp = json['gdp'] ?? '';
      timezone = json['timezones']?.first ?? '';
      dateFormat = json['dateformat'] ?? '';
      dialCode = '${json['idd']['root']}${json['idd']['suffixes'][0]}';
      driveSide = json['car']['side'];
    } catch (e) {
      Get.log(e.toString());
    }
  }

  @override
  String getSuspensionTag() => name?[0].toString().toUpperCase() ?? '';
}