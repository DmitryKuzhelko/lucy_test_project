import 'package:flutter/material.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/screens/widgets/currency_list_item.dart';

class CurrenciesListWidget extends StatelessWidget {
  const CurrenciesListWidget({
    super.key,
    required this.currenciesData,
  });

  final Map<String, List<Currency>> currenciesData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: currenciesData[currenciesData.keys.first]!.map(
              (Currency currency) => CurrencyListItem(
                currency: currency,
              ),
            )
            .toList(),
      ),
    );
  }
}
