import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucy_test_project/generated/app_strings.g.dart';
import 'package:lucy_test_project/models/setting_config.dart';
import 'package:lucy_test_project/screens/settings/cubit/settings_cubit.dart';
import 'package:collection/collection.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settingsLanguage.tr()),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.popRoute(),
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<SettingsCubit, SettingsState>(
          listener: (context, SettingsState state) {},
          builder: (context, SettingsState state) {
            final cubit = context.read<SettingsCubit>();
            return ReorderableListView(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              children: <Widget>[
                ...state.config.settingsList.mapIndexed(
                  (int index, ConfigItem item) => Row(
                    key: ValueKey(index),
                    children: [
                      Text(item.currency.curAbbreviation ?? "-"),
                      Switch(
                        value: item.isVisible,
                        onChanged: (bool value) {
                          cubit.changeVisibility(index: index, isEnable: value);
                        },
                      ),
                    ],
                  ),
                ),
              ],
              onReorder: (int oldIndex, int newIndex) {
                setState(
                  () {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    // final int item = cubit.removeAt(oldIndex);
                    // cubit.insert(newIndex, item);
                    cubit.reorderItem(
                      oldIndex: oldIndex,
                      newIndex: newIndex,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final bool isSelected;
  final String localeCode;
  const _ListItem({
    required this.localeCode,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Row(
            children: [
              Text(
                localeCode.tr(),
                style: TextStyle(
                  color: isSelected ? Colors.blue : Colors.grey,
                ),
              ),
              const Spacer(),
              if (isSelected)
                const Icon(
                  Icons.check,
                ),
            ],
          ),
        ),
        onPressed: () {
          // context.read<SettingsCubit>().changeLanguage(localeCode);
          context
              .findAncestorStateOfType<_SettingsScreenState>()
              ?.updateState();
        });
  }
}

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({super.key});

  @override
  State<ReorderableExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableExample> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: <Widget>[
        for (int index = 0; index < _items.length; index += 1)
          ListTile(
            key: Key('$index'),
            tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${_items[index]}'),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
