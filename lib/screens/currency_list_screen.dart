import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lucy_test_project/screens/currency_list_content.dart';

@RoutePage()
class CurrencyListScreen extends StatelessWidget {
  const CurrencyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CurrentyListContent();
  }
}
