import 'package:flutter/material.dart';
import 'package:lucy_test_project/models/currency.dart';

class CurrencyListItem extends StatelessWidget {
  const CurrencyListItem({
    super.key,
    required this.currency,
  });

  final Currency currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      // minSize: 0,
      // pressedOpacity: 0.7,
      // onPressed: onPress,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 2),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          border: Border.all(
            width: 1,
            color: Colors.blueAccent.withOpacity(0.2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(currency.curAbbreviation ?? "?"),
                const SizedBox(
                  height: 8,
                ),
                Text(currency.curAbbreviation ?? "?"),
              ],
            ),
            const Spacer(),
            TextButton.icon(
              icon: const Icon(Icons.edit),
              label: const Text(""),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.delete_outline),
              label: const Text(""),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
