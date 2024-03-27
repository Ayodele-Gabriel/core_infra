import 'package:core_infra/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Withdrawal', style: kWithdrawal),
            Text(
              '₦35,000.00',
              style: kAmount,
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'GTBank/chrisnwabuokei/0569946101',
              style: kTransactionId,
            ),
            Text(
              '24-Feb-2024',
              style: kTransactionDate,
            ),
          ],
        ),
      ],
    );
  }
}
