import 'package:lucy_test_project/models/currency.dart';

class SettingConfig {
  const SettingConfig({
    required this.settingsList,
  }) : totalNumberOfCurrenties = settingsList.length;

  final List<ConfigItem> settingsList;
  final int totalNumberOfCurrenties;

  SettingConfig insert({required int index, required ConfigItem item}) {
    settingsList.insert(index, item);
    return this;
  }

  ConfigItem removeAt(int index) {
    return settingsList.removeAt(index);
  }

  SettingConfig changeVisibility({
    required index,
    required bool isEnable,
  }) {
    settingsList.elementAt(index).isVisible = isEnable;
    return this;
  }
}

class ConfigItem {
  ConfigItem({
    required this.currency,
  });

  Currency currency;
  bool _isEnable = true;
  int _positionInList = 1;

  set positionInList(int position) => _positionInList = position;
  int get positionInList => _positionInList;

  set isVisible(bool isEnable) => _isEnable = isEnable;
  bool get isVisible => _isEnable;
}
