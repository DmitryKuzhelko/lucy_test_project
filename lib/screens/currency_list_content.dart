import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucy_test_project/cubit/currencies_cubit.dart';
import 'package:lucy_test_project/generated/app_strings.g.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/router/app_router.gr.dart' as router;
import 'package:lucy_test_project/screens/widgets/loading_widget.dart';
import 'package:lucy_test_project/screens/widgets/currencies_list_widget.dart';

class CurrentyListContent extends StatelessWidget {
  const CurrentyListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.notesList.tr()),
        actions: [
          CupertinoButton(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              minSize: 0,
              child: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                context.navigateTo(const router.SettingsRoute());
              }),
        ],
      ),
      body: BlocBuilder<CurrenciesCubit, CurrenciesState>(
        builder: (context, CurrenciesState state) {
          return state.when(
            loading: () => const LoadingWidget(),
            error: () => _errorState(),
            success: (Map<String, List<Currency>> currenciesData) =>
                CurrenciesListWidget(currenciesData: currenciesData),
          );
        },
      ),
    );
  }

  // Widget _errorState(List<ParserMessageEntity<String>>? errors) {
  Widget _errorState() {
    return const Center(
      child: Text(
        // errors.toString(),
        "Не удалось получить курсы валют",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
