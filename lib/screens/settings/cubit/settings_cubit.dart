import 'package:bloc/bloc.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/models/setting_config.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
      : super(
          SettingsState(
            SettingConfig(
              settingsList: _getMockCurrencies(),
            ),
          ),
        );

  SettingConfig _insert(int index, ConfigItem item) {
    return state.config.insert(
      index: index,
      item: item,
    );
  }

  ConfigItem _removeAt(int index) {
    return state.config.removeAt(index);
  }

  void reorderItem({
    required int oldIndex,
    required int newIndex,
  }) {
    _insert(
      newIndex,
      _removeAt(oldIndex),
    );
    emit(SettingsState(state.config));
  }

  void changeVisibility({
    required int index,
    required bool isEnable,
  }) {
    emit(
      SettingsState(
        state.config.changeVisibility(
          index: index,
          isEnable: isEnable,
        ),
      ),
    );
  }
}

List<ConfigItem> _getMockCurrencies() {
  return Currency.listFromJson([
    {
      "Cur_ID": 170,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "AUD",
      "Cur_Scale": 1,
      "Cur_Name": "Австралийский доллар",
      "Cur_OfficialRate": 1.5039
    },
    {
      "Cur_ID": 191,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "BGN",
      "Cur_Scale": 1,
      "Cur_Name": "Болгарский лев",
      "Cur_OfficialRate": 1.1420
    },
    {
      "Cur_ID": 290,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "UAH",
      "Cur_Scale": 100,
      "Cur_Name": "Гривен",
      "Cur_OfficialRate": 8.0627
    },
    {
      "Cur_ID": 291,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "DKK",
      "Cur_Scale": 10,
      "Cur_Name": "Датских крон",
      "Cur_OfficialRate": 3.0022
    },
    {
      "Cur_ID": 145,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "USD",
      "Cur_Scale": 1,
      "Cur_Name": "Доллар США",
      "Cur_OfficialRate": 2.0048
    },
    {
      "Cur_ID": 292,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "EUR",
      "Cur_Scale": 1,
      "Cur_Name": "Евро",
      "Cur_OfficialRate": 2.2354
    },
    {
      "Cur_ID": 293,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "PLN",
      "Cur_Scale": 10,
      "Cur_Name": "Злотых",
      "Cur_OfficialRate": 5.0219
    },
    {
      "Cur_ID": 303,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "IRR",
      "Cur_Scale": 100000,
      "Cur_Name": "Иранских риалов",
      "Cur_OfficialRate": 6.5540
    },
    {
      "Cur_ID": 294,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "ISK",
      "Cur_Scale": 100,
      "Cur_Name": "Исландских крон",
      "Cur_OfficialRate": 1.6351
    },
    {
      "Cur_ID": 295,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "JPY",
      "Cur_Scale": 100,
      "Cur_Name": "Йен",
      "Cur_OfficialRate": 1.9704
    },
    {
      "Cur_ID": 23,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "CAD",
      "Cur_Scale": 1,
      "Cur_Name": "Канадский доллар",
      "Cur_OfficialRate": 1.5544
    },
    {
      "Cur_ID": 304,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "CNY",
      "Cur_Scale": 10,
      "Cur_Name": "Китайских юаней",
      "Cur_OfficialRate": 3.0051
    },
    {
      "Cur_ID": 72,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "KWD",
      "Cur_Scale": 1,
      "Cur_Name": "Кувейтский динар",
      "Cur_OfficialRate": 6.6482
    },
    {
      "Cur_ID": 296,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "MDL",
      "Cur_Scale": 10,
      "Cur_Name": "Молдавских леев",
      "Cur_OfficialRate": 1.0119
    },
    {
      "Cur_ID": 286,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "NZD",
      "Cur_Scale": 1,
      "Cur_Name": "Новозеландский доллар",
      "Cur_OfficialRate": 1.4445
    },
    {
      "Cur_ID": 297,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "NOK",
      "Cur_Scale": 10,
      "Cur_Name": "Норвежских крон",
      "Cur_OfficialRate": 2.4049
    },
    {
      "Cur_ID": 298,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "RUB",
      "Cur_Scale": 100,
      "Cur_Name": "Российских рублей",
      "Cur_OfficialRate": 3.1208
    },
    {
      "Cur_ID": 299,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "XDR",
      "Cur_Scale": 1,
      "Cur_Name": "СДР (Специальные права заимствования)",
      "Cur_OfficialRate": 2.7986
    },
    {
      "Cur_ID": 119,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "SGD",
      "Cur_Scale": 1,
      "Cur_Name": "Сингапурcкий доллар",
      "Cur_OfficialRate": 1.4855
    },
    {
      "Cur_ID": 300,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "KGS",
      "Cur_Scale": 100,
      "Cur_Name": "Сомов",
      "Cur_OfficialRate": 2.9738
    },
    {
      "Cur_ID": 301,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "KZT",
      "Cur_Scale": 1000,
      "Cur_Name": "Тенге",
      "Cur_OfficialRate": 5.9490
    },
    {
      "Cur_ID": 302,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "TRY",
      "Cur_Scale": 10,
      "Cur_Name": "Турецких лир",
      "Cur_OfficialRate": 6.8747
    },
    {
      "Cur_ID": 143,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "GBP",
      "Cur_Scale": 1,
      "Cur_Name": "Фунт стерлингов",
      "Cur_OfficialRate": 2.6340
    },
    {
      "Cur_ID": 305,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "CZK",
      "Cur_Scale": 100,
      "Cur_Name": "Чешских крон",
      "Cur_OfficialRate": 8.2533
    },
    {
      "Cur_ID": 306,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "SEK",
      "Cur_Scale": 10,
      "Cur_Name": "Шведских крон",
      "Cur_OfficialRate": 2.3705
    },
    {
      "Cur_ID": 130,
      "Date": "2016-07-06T00:00:00",
      "Cur_Abbreviation": "CHF",
      "Cur_Scale": 1,
      "Cur_Name": "Швейцарский франк",
      "Cur_OfficialRate": 2.0641
    }
  ]).map((e) => ConfigItem(currency: e)).toList();
}
