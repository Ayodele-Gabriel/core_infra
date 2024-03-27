import 'package:core_infra/utilities/constants.dart';
import 'package:flutter/material.dart';

class TransactionStatus extends StatelessWidget {
  const TransactionStatus(
      {super.key, required this.transactionStatus, required this.style});

  final String transactionStatus;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(232, 232, 232, 1),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cash Withdrawal', style: kCashWithdrawal),
                    Text(
                      'CTRANS-473875889983',
                      style: kCashWithdrawalID,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '₦25,000.00',
                  style: kAmount,
                ),
                Text(
                  transactionStatus,
                  style: style,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
